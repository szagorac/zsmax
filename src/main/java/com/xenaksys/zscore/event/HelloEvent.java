package com.xenaksys.zscore.event;

import java.util.List;

public class HelloEvent extends OscEvent {

    HelloEvent(String address, List<Object> arguments, String destination, long time) {
        super(address, arguments, null, destination, time);
    }

    public OscEventType getOscEventType() {
        return OscEventType.HELLO;
    }
}
