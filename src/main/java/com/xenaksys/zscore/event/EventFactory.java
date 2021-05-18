package com.xenaksys.zscore.event;

import com.xenaksys.zscore.Consts;
import com.xenaksys.zscore.model.id.BeatId;

import java.util.ArrayList;
import java.util.List;

import static com.xenaksys.zscore.Consts.OSC_INSCORE_ADDRESS_ROOT;
import static com.xenaksys.zscore.Consts.ZSCORE_ADDR;

public class EventFactory {

    public OscEvent createOscEvent(String address, List<Object> arguments, BeatId eventBaseBeat, long creationTime) {
        return new OscEvent(address, arguments, eventBaseBeat, creationTime);
    }

    public OscEvent createOscEvent(String address, List<Object> args, String destination, long creationTime) {
        return new OscEvent(address, args, null, destination, creationTime);
    }

    public HelloEvent createHelloEvent(String destination, int inPort, int outPort, long creationTime) {
        return new HelloEvent(ZSCORE_ADDR, createHelloArgs(inPort, outPort), destination, creationTime);
    }

    public HelloEvent createInscoreHelloEvent(String destination, String clientHost, int inPort, int outPort, int errPort, long creationTime) {
        return new HelloEvent(OSC_INSCORE_ADDRESS_ROOT, createInscoreHelloArgs(clientHost, inPort, outPort, errPort), destination, creationTime);
    }

    public PingEvent createPingEvent(String destination, long serverTime, int port, long creationTime) {
        return new PingEvent(ZSCORE_ADDR, createPingArgs(serverTime, port), destination, creationTime);
    }

    public SendInstrumentEvent createSendInstrumentEvent(String destination, String instrument, int port, long creationTime) {
        return new SendInstrumentEvent(ZSCORE_ADDR, createSendInstrumentArgs(instrument, port), destination, creationTime);
    }

    public List<Object> createJavaScriptArgs() {
        List<Object> jsArgs = new ArrayList<>();
        jsArgs.add(Consts.RUN);
        return jsArgs;
    }

    public List<Object> createInscoreHelloArgs(String ip, int inPort, int outPort, int errPort) {
        List<Object> args = new ArrayList<>();
        args.add(ip);
        args.add(inPort);
        args.add(outPort);
        args.add(errPort);
        return args;
    }

    public List<Object> createHelloArgs(int inPort, int outPort) {
        List<Object> args = new ArrayList<>();
        args.add(Consts.HELLO);
        args.add(inPort);
        args.add(outPort);
        return args;
    }

    public List<Object> createSendInstrumentArgs(String instrument, int port) {
        List<Object> args = new ArrayList<>();
        args.add(Consts.SET_INSTRUMENT);
        args.add(instrument);
        args.add(port);
        return args;
    }

    public List<Object> createPingArgs(long serverTime, int port) {
        List<Object> args = new ArrayList<>();
        args.add(Consts.ARG_PING);
        args.add(serverTime);
        args.add(port);
        return args;
    }
}
