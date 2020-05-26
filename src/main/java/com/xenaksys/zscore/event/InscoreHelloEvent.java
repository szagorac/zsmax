package com.xenaksys.zscore.event;

import java.util.List;

public class InscoreHelloEvent extends OscEvent {

    InscoreHelloEvent(String address, List<Object> arguments, String destination, long time) {
        super(address, arguments, null, destination, time);
    }

    public OscEventType getOscEventType() {
        return OscEventType.HELLO;
    }
}
