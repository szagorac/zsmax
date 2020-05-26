package com.xenaksys.zscore.event;

import com.xenaksys.zscore.Consts;
import com.xenaksys.zscore.model.id.BeatId;

import java.util.ArrayList;
import java.util.List;

public class EventFactory {

    public OscEvent createOscEvent(String address, List<Object> arguments, BeatId eventBaseBeat, long creationTime) {
        return new OscEvent(address, arguments, eventBaseBeat, creationTime);
    }

    public OscEvent createOscEvent(String address, List<Object> args, String destination, long creationTime) {
        return new OscEvent(address, args, null, destination, creationTime);
    }

    public HelloEvent createHelloEvent(String oscAddress, String destination, int inPort, int outPort, long creationTime) {
        return new HelloEvent(oscAddress, createHelloArgs(inPort, outPort), destination, creationTime);
    }

    public HelloEvent createInscoreHelloEvent(String oscAddress, String destination, String clientHost, int inPort, int outPort, int errPort, long creationTime) {
        return new HelloEvent(oscAddress, createInscoreHelloArgs(clientHost, inPort, outPort, errPort), destination, creationTime);
    }

    public List<Object> createJavaScriptArgs() {
        List<Object> jsArgs = new ArrayList<>();
        jsArgs.add(Consts.RUN);
        return jsArgs;
    }

    public List<Object> createInscoreHelloArgs(String ip, int inPort, int outPort, int errPort) {
        List<Object> jsArgs = new ArrayList<>();
        jsArgs.add(ip);
        jsArgs.add(inPort);
        jsArgs.add(outPort);
        jsArgs.add(errPort);
        return jsArgs;
    }

    public List<Object> createHelloArgs(int inPort, int outPort) {
        List<Object> jsArgs = new ArrayList<>();
        jsArgs.add(Consts.HELLO);
        jsArgs.add(inPort);
        jsArgs.add(outPort);
        return jsArgs;
    }
}
