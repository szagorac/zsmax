package com.xenaksys.zscore.client.factory;

import com.lmax.disruptor.EventFactory;
import com.xenaksys.zscore.event.OscEvent;

public class OscEventFactory implements EventFactory<OscEvent> {

    @Override
    public OscEvent newInstance() {
        return new OscEvent();
    }
}

