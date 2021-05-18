package com.xenaksys.zscore.client.receive.disruptor;

import com.lmax.disruptor.dsl.Disruptor;
import com.xenaksys.zscore.client.ZscoreClient;
import com.xenaksys.zscore.event.EventFactory;
import com.xenaksys.zscore.event.IncomingOscEvent;
import com.xenaksys.zscore.max.LoggerFactory;
import com.xenaksys.zscore.model.Clock;
import com.xenaksys.zscore.model.Logger;
import com.xenaksys.zscore.model.ZscoreEvent;
import com.xenaksys.zscore.model.ZscoreIncomingEventListener;
import com.xenaksys.zscore.util.IpAddressValidator;
import com.xenaksys.zscore.util.ParseUtil;

import java.net.InetAddress;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

import static com.xenaksys.zscore.Consts.ARG_INSCORE_HELLO;
import static com.xenaksys.zscore.Consts.CLOSE_BRACKET;
import static com.xenaksys.zscore.Consts.COMMA;
import static com.xenaksys.zscore.Consts.EMPTY;
import static com.xenaksys.zscore.Consts.JS_CMD_PING;
import static com.xenaksys.zscore.Consts.JS_CMD_SERVER_HELLO;
import static com.xenaksys.zscore.Consts.JS_CMD_SET_INSTRUMENTS;
import static com.xenaksys.zscore.Consts.JS_CMD_SET_SERVER_ID;
import static com.xenaksys.zscore.Consts.JS_INSCORE_CMD_RUN;
import static com.xenaksys.zscore.Consts.OPEN_BRACKET;
import static com.xenaksys.zscore.Consts.OSC_ADDRESS_ZSCORE;
import static com.xenaksys.zscore.Consts.OSC_INSCORE_ADDRESS_ROOT;
import static com.xenaksys.zscore.Consts.OSC_INSCORE_JS;
import static com.xenaksys.zscore.Consts.SINGLE_QUOTE;


public class DisruptorEventReceiver extends AbstractReceiveDisruptorEventsProcessor {
    static final Logger LOG = LoggerFactory.getLogger(DisruptorEventReceiver.class);

    private final List<ZscoreIncomingEventListener> listeners = new CopyOnWriteArrayList<>();
    private final IpAddressValidator ipValidator = new IpAddressValidator();

    private final ZscoreClient zsClient;
    private final Clock clock;
    private final EventFactory eventFactory;

    public DisruptorEventReceiver(ZscoreClient zsClient, Clock clock, EventFactory eventFactory, Disruptor<IncomingOscEvent> disruptor) {
        super(disruptor);
        this.zsClient = zsClient;
        this.clock = clock;
        this.eventFactory = eventFactory;
    }


    @Override
    protected void processDisruptorEvent(IncomingOscEvent event) {
        if (event == null) {
            return;
        }

        zsClient.logEvent(event);

        try {
            processIncomingOscEvent(event);
        } catch (Exception e) {
            LOG.error("Failed to process event: " + event, e);
        }
    }

    private void processIncomingOscEvent(IncomingOscEvent event) throws Exception {
        if (event == null) {
            return;
        }

        InetAddress inetAddress = event.getInetAddress();
        String oscAddress = event.getAddress();
        switch (oscAddress) {
            case OSC_INSCORE_ADDRESS_ROOT:
                processInscoreEvent(event);
                break;
            case OSC_INSCORE_JS:
                processJsEvent(event);
                break;
            default:
                processOscEvent(oscAddress, event);
        }
    }

    private void processInscoreEvent(IncomingOscEvent event) throws Exception {
        List<Object> args = event.getArguments();
        String inscoreCmd = null;
        if (args.size() > 0) {
            inscoreCmd = (String) args.get(0);
        }

        if (inscoreCmd == null) {
            LOG.warn("processInscoreEvent: Invalid Inscore command");
            return;
        }

        switch (inscoreCmd) {
            case ARG_INSCORE_HELLO:
                processInscoreHello(event);
                break;
            default:
                LOG.error("processInscoreEvent: Unknown Inscore command: " + inscoreCmd);
        }
    }

    private void processJsEvent(IncomingOscEvent event) throws Exception {
        List<Object> args = event.getArguments();
        String inscoreCmd = null;
        String jsCmd = null;
        List<Object> cmdArgs = new ArrayList<>();
        if (args.size() > 0) {
            inscoreCmd = (String) args.get(0);
        }
        if (args.size() > 1) {
            jsCmd = (String) args.get(1);
        }
        if (args.size() > 2) {
            for (int i = 2; i < args.size(); i++) {
                cmdArgs.add(args.get(i));
            }
        }
        processJsCmd(inscoreCmd, jsCmd, cmdArgs);
    }

    private void processOscEvent(String oscAddress, IncomingOscEvent event) throws Exception {
        List<Object> args = event.getArguments();
        String cmd = null;
        List<Object> cmdArgs = new ArrayList<>();

        if (oscAddress.startsWith(OSC_ADDRESS_ZSCORE)) {
            oscAddress = oscAddress.replace(OSC_ADDRESS_ZSCORE, EMPTY);
        }

        // target is out arg0
        cmdArgs.add(oscAddress);

        //command is in arg0
        if (args.size() > 0) {
            cmd = (String) args.get(0);
        }
        if (args.size() > 1) {
            for (int i = 1; i < args.size(); i++) {
                cmdArgs.add(args.get(i));
            }
        }
        Object[] out = cmdArgs.toArray(new Object[0]);
        LOG.debug(" received cmdName: " + cmd + " oscAddress: " + oscAddress);
        zsClient.onAnyCommand(cmd, out);
    }

    private void processJsCmd(String inscoreCmd, String cmd, List<Object> cmdArgs) throws Exception {
        if (!JS_INSCORE_CMD_RUN.equals(inscoreCmd)) {
            LOG.error("Unexpected JS InScore command: " + inscoreCmd);
            return;
        }
        String cmdName = getCmdName(cmd);
        LOG.debug(" received cmdName: " + cmd);
        switch (cmdName) {
            case JS_CMD_SET_SERVER_ID:
                processSetServerId(cmd, cmdArgs);
                break;
            case JS_CMD_PING:
                processPing(cmd, cmdArgs);
                break;
            case JS_CMD_SERVER_HELLO:
                processServerHello(cmd, cmdArgs);
                break;
            case JS_CMD_SET_INSTRUMENTS:
                processSetInstruments(cmd, cmdArgs);
                break;
            default:
                processAnyCmd(cmd, cmdName, cmdArgs);
        }
    }

    private void processAnyCmd(String cmd, String cmdName, List<Object> cmdArgs) {
        String[] jsArgs = parseJsArgs(cmd);
        List<Object> allArgs = new ArrayList<>();
        for (String arg : jsArgs) {
            String v = arg.replaceAll(SINGLE_QUOTE, EMPTY);
            if (v.isEmpty()) {
                continue;
            }
            allArgs.add(ParseUtil.convertToType(v));
        }

        allArgs.addAll(cmdArgs);
        Object[] out = allArgs.toArray(new Object[0]);

        zsClient.onAnyCommand(cmdName, out);
    }

    private String getCmdName(String cmd) {
        int e = cmd.indexOf(OPEN_BRACKET);
        String name = cmd.substring(0, e);
        return name.trim();
    }

    private void processSetServerId(String cmd, List<Object> cmdArgs) throws Exception {
        if (!cmdArgs.isEmpty()) {
            LOG.warn("processSetServerId: Unexpected arguments: " + Arrays.toString(cmdArgs.toArray()));
        }

        String[] jsArgs = parseJsArgs(cmd);
        if (jsArgs.length > 1) {
            LOG.warn("processSetServerId: Unexpected number of js arguments: " + Arrays.toString(jsArgs));
        }

        String serverIp = getStringArg(0, jsArgs);
        InetAddress serverAddr = InetAddress.getByName(serverIp);
        zsClient.onSetServerAddr(serverAddr);
    }

    private String[] parseJsArgs(String cmd) {
        int s = cmd.indexOf(OPEN_BRACKET) + 1;
        int e = cmd.indexOf(CLOSE_BRACKET, s);
        String ars = cmd.substring(s, e);
        return ars.split(COMMA);
    }

    private String getStringArg(int index, String[] args) {
        if (args.length <= index) {
            LOG.warn("getStringArg: invalid index: ");
            return null;
        }

        String sarg = args[index];
        return sarg.replaceAll(SINGLE_QUOTE, EMPTY);
    }

    private void processSetInstruments(String cmd, List<Object> cmdArgs) {
        String[] jsArgs = parseJsArgs(cmd);
        if (jsArgs.length == 0) {
            LOG.warn("processSetInstruments: Unexpected number of js arguments: " + Arrays.toString(jsArgs));
            return;
        }

        List<String> instruments = new ArrayList<>();
        for (int i = 0; i < jsArgs.length; i++) {
            instruments.add(getStringArg(i, jsArgs));
        }

        zsClient.onSetInstruments(instruments);
    }

    private void processInscoreHello(IncomingOscEvent event) {
        zsClient.onInscoreHello();
    }

    private void processServerHello(String cmd, List<Object> cmdArgs) {
        String[] jsArgs = parseJsArgs(cmd);
        if (jsArgs.length > 1) {
            LOG.warn("processServerHello: Unexpected number of js arguments: " + Arrays.toString(jsArgs));
        }

        String serverHost = getStringArg(0, jsArgs);
        zsClient.onServerHello(serverHost);
    }

    private void processPing(String cmd, List<Object> cmdArgs) {
        LOG.debug("Received ping message");
        if (!cmdArgs.isEmpty()) {
            LOG.warn("processPing: Unexpected arguments: " + Arrays.toString(cmdArgs.toArray()));
        }

        String[] jsArgs = parseJsArgs(cmd);
        if (jsArgs.length > 1) {
            LOG.warn("processPing: Unexpected number of js arguments: " + Arrays.toString(jsArgs));
        }

        String sarg = getStringArg(0, jsArgs);
        if (sarg == null) {
            LOG.error("processPing: invalid serverTime argument");
            return;
        }
        long serverTime = Long.parseLong(sarg);

        zsClient.onServerPing(serverTime);
    }

    public void addListener(ZscoreIncomingEventListener listener) {
        listeners.add(listener);
    }

    public void notifyListeners(ZscoreEvent event) {
        for (ZscoreIncomingEventListener listener : listeners) {
            listener.onEvent(event);
        }
    }

}