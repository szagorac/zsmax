package com.xenaksys.zscore.client.receive;

import com.lmax.disruptor.EventFactory;
import com.xenaksys.zscore.event.IncomingOscEvent;

public class IncomingOscEventFactory implements EventFactory<IncomingOscEvent> {

    @Override
    public IncomingOscEvent newInstance() {
        return new IncomingOscEvent();
    }
}

