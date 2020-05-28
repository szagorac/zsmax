package com.xenaksys.zscore.event;

import java.util.List;

public class SendInstrumentEvent extends OscEvent {

    public SendInstrumentEvent(String address, List<Object> arguments, String destination, long time) {
        super(address, arguments, null, destination, time);
    }

    public OscEventType getOscEventType() {
        return OscEventType.SEND_INSTRUMENT;
    }
}
