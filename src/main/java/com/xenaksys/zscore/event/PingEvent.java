package com.xenaksys.zscore.event;

import java.util.List;

public class PingEvent extends OscEvent {

    public PingEvent(String address, List<Object> arguments, String destination, long time) {
        super(address, arguments, null, destination, time);
    }

    public OscEventType getOscEventType() {
        return OscEventType.PING;
    }
}
