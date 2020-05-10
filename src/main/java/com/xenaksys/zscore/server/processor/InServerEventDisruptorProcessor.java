package com.xenaksys.zscore.server.processor;

import com.lmax.disruptor.dsl.Disruptor;
import com.xenaksys.zscore.Consts;
import com.xenaksys.zscore.event.EventFactory;
import com.xenaksys.zscore.event.IncomingOscEvent;
import com.xenaksys.zscore.event.InstrumentEvent;
import com.xenaksys.zscore.event.ParticipantEvent;
import com.xenaksys.zscore.event.ParticipantStatsEvent;
import com.xenaksys.zscore.max.LoggerFactory;
import com.xenaksys.zscore.model.Clock;
import com.xenaksys.zscore.model.Logger;
import com.xenaksys.zscore.model.ZscoreEvent;
import com.xenaksys.zscore.net.ParticipantStats;
import com.xenaksys.zscore.process.AbstractOscReceiverDisruptorProcessor;
import com.xenaksys.zscore.receive.ZscoreIncomingEventListener;
import com.xenaksys.zscore.server.ZscoreServer;
import com.xenaksys.zscore.util.IpAddressValidator;

import java.net.InetAddress;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;


public class InServerEventDisruptorProcessor extends AbstractOscReceiverDisruptorProcessor {
    static final Logger LOG = LoggerFactory.getLogger(InServerEventDisruptorProcessor.class);

    private final List<ZscoreIncomingEventListener> listeners = new CopyOnWriteArrayList<>();
    private final IpAddressValidator ipValidator = new IpAddressValidator();

    private final ZscoreServer server;
    private final Clock clock;
    private final EventFactory eventFactory;

    public InServerEventDisruptorProcessor(ZscoreServer server, Clock clock, EventFactory eventFactory, Disruptor<IncomingOscEvent> disruptor) {
        super(disruptor);
        this.server = server;
        this.clock = clock;
        this.eventFactory = eventFactory;
    }


    @Override
    protected void processInternal(IncomingOscEvent event) {
        if (event == null) {
            return;
        }

        server.logEvent(event);

        try {
            processIncomingOscEvent(event);
        } catch (Exception e) {
            LOG.error("Failed to process event: " + event, e);
        }
    }

    private void processIncomingOscEvent(IncomingOscEvent event) {
        if (event == null) {
            return;
        }

        InetAddress inetAddress = event.getInetAddress();
        boolean isParticipant = checkAddress(inetAddress);

        if (!isParticipant) {
            addParticipant(inetAddress);
        }

        String address = event.getAddress();
        switch (address) {
            case Consts.ZSCORE_ADDR:
                processZscoreMessage(event);
                break;
            case Consts.INSCORE_ADDR:
                processInscoreMessage(event);
                break;
            case Consts.OSC_INSCORE_ADDRESS_ROOT:
                processAppMessage(event);
                break;
            case Consts.ERR_ADDR:
                processError(event);
                break;
            default:
                LOG.error("Unknown address: " + address);
        }
    }

    private void processAppMessage(IncomingOscEvent event) {
        LOG.debug("Received APP message: " + event.getAddress() + " args: " + event.getArguments());
        if (isInscoreHello(event)) {
            processInscoreHello(event);
            return;
        }

        notifyListeners(event);
    }

    private void processInscoreHello(IncomingOscEvent event) {
        List<Object> args = event.getArguments();

        String ip = (String) args.get(0);
        InetAddress inetAddress = event.getInetAddress();
        if (!inetAddress.getHostAddress().equals(ip)) {
            LOG.error("Inscore HELLO Event IP address: " + ip + " is not the same as InetAddress: " + inetAddress.getHostAddress() + ", assuming local host");
        }
        addParticipant(inetAddress);

        int remoteInPort = (Integer) args.get(1);
        addOutPort(inetAddress, remoteInPort);

        int remoteOutPort = (Integer) args.get(2);
        addInPort(remoteOutPort);

        int remoteErrPort = (Integer) args.get(3);
        addInPort(remoteErrPort);

        server.sendServerHelloEvent(inetAddress.getHostAddress());

        ParticipantEvent participantEvent = eventFactory.createParticipantEvent(inetAddress, inetAddress.getHostAddress(), remoteInPort, remoteOutPort,
                remoteErrPort, 0, Consts.NAME_NA, clock.getSystemTimeMillis());

        notifyListeners(participantEvent);
    }

    private void processInscoreMessage(IncomingOscEvent event) {
        LOG.debug("Received Inscore message: " + event.getAddress() + " args: " + event.getArguments());
        notifyListeners(event);
    }

    private void processZscoreMessage(IncomingOscEvent event) {
        LOG.debug("Received ZSCORE message: " + event.getAddress() + " args: " + event.getArguments());

        if (isZscoreHello(event)) {
            processHello(event);
        } else if (isZscorePing(event)) {
            processPing(event);
        } else if (isZscoreSetInstrument(event)) {
            processSetInstrument(event);
        }

        notifyListeners(event);
    }

    private void processSetInstrument(IncomingOscEvent event) {
        List<Object> args = event.getArguments();
        String instrument = null;

        if (args.size() > 1) {
            Object arg = args.get(1);
            if (arg != null && (arg instanceof String)) {
                instrument = (String) arg;
            }
        }

        InetAddress inetAddress = event.getInetAddress();

        if (!server.isParticipant(inetAddress)) {
            LOG.error("Invalid participant in set Instrument: " + inetAddress.getHostAddress());
            addParticipant(inetAddress);
            server.sendHello(inetAddress.getHostAddress());
        }

        server.addInstrumentOutPort(inetAddress, instrument);

//        server.sendScoreInfo(instrument);

        InstrumentEvent instrumentEvent = new InstrumentEvent(inetAddress, instrument, clock.getSystemTimeMillis());

        notifyListeners(instrumentEvent);

    }

    private void processHello(IncomingOscEvent event) {
        List<Object> args = event.getArguments();
        int port = Consts.DEFAULT_OSC_PORT;

        if (args.size() > 1) {
            Object arg = args.get(1);
            if (arg != null && (arg instanceof Integer)) {
                port = (Integer) arg;
            }

        }
        addOutPort(event.getInetAddress(), port);

        port = Consts.DEFAULT_OSC_OUT_PORT;
        if (args.size() > 2) {
            Object arg = args.get(2);
            if (arg != null && (arg instanceof Integer)) {
                port = (Integer) arg;
            }
        }
        addInPort(port);


        server.sendHello(event.getInetAddress().getHostAddress());
    }

    private void processPing(IncomingOscEvent event) {
        List<Object> args = event.getArguments();
        String st = null;

        if (args.size() > 1) {
            Object arg = args.get(1);
            if (arg != null && (arg instanceof String)) {
                st = (String) arg;
            }
        }

        if (st == null) {
            return;
        }

        InetAddress inetAddress = event.getInetAddress();

        if (!server.isParticipant(inetAddress)) {
            LOG.error("Ping from Invalid participant: " + inetAddress.getHostAddress());
            return;
        }

        String ipAddress = inetAddress.getHostAddress();
        ParticipantStats stats = server.getParticipantStats(ipAddress);
        if (stats == null) {
            stats = new ParticipantStats(ipAddress);
            server.addParticipantStats(stats);
        }

        long sendTime = Long.valueOf(st);
        long receivedTime = event.getCreationTime();
        double latency = 1.0 * (receivedTime - sendTime);
        double oneWayLatency = latency / 2.0;
        oneWayLatency = Math.round(oneWayLatency * 100.0) / 100.0;
//LOG.debug("Calculated oneWayLatency: " + oneWayLatency + " roundTriplatency: " + latency + " for " + ipAddress + " receivedTime: " + receivedTime + " sendTime: " + sendTime);

        stats.setPingLatency(latency);
        stats.setOneWayPingLatency(oneWayLatency);

        ParticipantStatsEvent statsEvent = eventFactory.createParticipantStatsEvent(inetAddress, ipAddress, latency, oneWayLatency, clock.getSystemTimeMillis());

        notifyListeners(statsEvent);
    }

    private void processError(IncomingOscEvent event) {
        LOG.debug("Received ERROR message: " + event.getAddress() + " args: " + event.getArguments());
        notifyListeners(event);
    }

    public void addListener(ZscoreIncomingEventListener listener) {
        listeners.add(listener);
    }

    public void notifyListeners(ZscoreEvent event) {
        for (ZscoreIncomingEventListener listener : listeners) {
            listener.onEvent(event);
        }
    }

    private boolean isZscoreHello(IncomingOscEvent event) {

        List<Object> args = event.getArguments();
        if (args == null || args.size() < 1) {
            return false;
        }

        Object arg = args.get(0);
        if (arg == null || !(arg instanceof String)) {
            return false;
        }

        String sarg = (String) arg;
        return Consts.ARG_HELLO.equals(sarg);
    }

    private boolean isZscorePing(IncomingOscEvent event) {

        List<Object> args = event.getArguments();
        if (args == null || args.size() < 1) {
            return false;
        }

        Object arg = args.get(0);
        if (arg == null || !(arg instanceof String)) {
            return false;
        }

        String sarg = (String) arg;
        return Consts.ARG_PING.equals(sarg);
    }

    private boolean isZscoreSetInstrument(IncomingOscEvent event) {

        List<Object> args = event.getArguments();
        if (args == null || args.size() < 1) {
            return false;
        }

        Object arg = args.get(0);
        if (arg == null || !(arg instanceof String)) {
            return false;
        }

        String sarg = (String) arg;
        return Consts.ARG_SET_INSTRUMENT.equals(sarg);
    }

    private boolean isInscoreHello(IncomingOscEvent event) {

        List<Object> args = event.getArguments();
        if (args == null || args.size() != 4) {
            return false;
        }

        Object arg = args.get(0);
        if (arg == null || !(arg instanceof String)) {
            return false;
        }

        //TODO when local host Inscore sends empty string
//        String ip = (String)arg;
//        if(!isIpAddress(ip)){
//            return false;
//        }

        for (int i = 1; i <= 3; i++) {
            arg = args.get(i);
            if (arg == null || !(arg instanceof Integer)) {
                return false;
            }
        }

        return true;
    }

    private boolean isIpAddress(String ip) {
        return ipValidator.validate(ip);
    }

    private boolean checkAddress(InetAddress address) {
        return server.isParticipant(address);
    }

    private void addParticipant(InetAddress address) {
        server.addParticipant(address);
    }

    private void addOutPort(InetAddress address, int port) {
        server.addOutPort(address, port);
    }

    private void addInPort(int port) {
        server.addInPort(port);
    }

}