package com.xenaksys.zscore.event;

import com.xenaksys.zscore.Consts;
import com.xenaksys.zscore.model.id.BeatId;

import java.net.InetAddress;
import java.util.ArrayList;
import java.util.List;

public class EventFactory {

    List<Object> oscClockArgs = new ArrayList<>();
    List<Object> oscDateArgs = new ArrayList<>();
    List<Object> oscDyArgs = new ArrayList<>();
    List<Object> oscYPositionArgs = new ArrayList<>();
    List<Object> oscAlphaArgs = new ArrayList<>();
    List<Object> oscPenAlphaArgs = new ArrayList<>();
    List<Object> oscColorArgs = new ArrayList<>();

    public EventFactory() {
        init();
    }

    private void init() {
        oscClockArgs.add(Consts.OSC_ARG_CLOCK);
        oscDateArgs.add(Consts.OSC_ARG_DATE);
        oscDyArgs.add(Consts.OSC_ARG_DY);
        oscYPositionArgs.add(Consts.OSC_ARG_Y_POSITION);
        oscAlphaArgs.add(Consts.OSC_ARG_ALPHA);
        oscPenAlphaArgs.add(Consts.OSC_ARG_PEN_ALPHA);
        oscColorArgs.add(Consts.OSC_ARG_PEN_COLOR);
    }

    public ParticipantEvent createParticipantEvent(InetAddress inetAddress, String hostAddress, int portIn, int portOut, int portErr, int ping, String instrument, long creationTime) {
        return new ParticipantEvent(inetAddress, hostAddress, portIn, portOut, portErr, ping, instrument, creationTime);
    }

    public ParticipantStatsEvent createParticipantStatsEvent(InetAddress inetAddress, String hostAddress, double pingLatencyMillis, double halfPingLatencyMillis, long creationTime) {
        return new ParticipantStatsEvent(inetAddress, hostAddress, pingLatencyMillis, halfPingLatencyMillis, creationTime);
    }

    public OscEvent createOscEvent(String address, List<Object> arguments, BeatId eventBaseBeat, long creationTime) {
        return new OscEvent(address, arguments, eventBaseBeat, creationTime);
    }

    public OscEvent createOscEvent(String address, List<Object> args, String destination, long creationTime) {
        return new OscEvent(address, args, null, destination, creationTime);
    }

    public HelloEvent createHelloEvent(String destination, long creationTime) {
        return new HelloEvent(Consts.OSC_INSCORE_ADDRESS_ROOT, createHelloArgs(), destination, creationTime);
    }

    public ServerHelloEvent createServerHelloEvent(String localAddr, String destination, long creationTime) {
        ServerHelloEvent ping = new ServerHelloEvent(createJavaScriptArgs(), destination, creationTime);
        ping.addCommandArg(localAddr);
        return ping;
    }

    public PingEvent createPingEvent(String destination, long creationTime) {
        PingEvent ping = new PingEvent(createJavaScriptArgs(), destination, creationTime);
        ping.addCommandArg(creationTime);
        return ping;
    }

    public List<Object> createJavaScriptArgs() {
        List<Object> jsArgs = new ArrayList<>();
        jsArgs.add(Consts.RUN);
        return jsArgs;
    }

    public List<Object> createHelloArgs() {
        List<Object> jsArgs = new ArrayList<>();
        jsArgs.add(Consts.HELLO);
        return jsArgs;
    }
}
