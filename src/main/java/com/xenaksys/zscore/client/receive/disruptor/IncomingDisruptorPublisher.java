package com.xenaksys.zscore.client.receive.disruptor;

import com.lmax.disruptor.RingBuffer;
import com.xenaksys.zscore.event.IncomingOscEvent;
import com.xenaksys.zscore.max.LoggerFactory;
import com.xenaksys.zscore.model.Logger;

public class IncomingDisruptorPublisher {
    static final Logger LOG = LoggerFactory.getLogger(IncomingDisruptorPublisher.class);

    private final RingBuffer<IncomingOscEvent> ringBuffer;
    private final IncomingOscEventTranslator translator = new IncomingOscEventTranslator();

    private volatile boolean isActive = false;

    public IncomingDisruptorPublisher(RingBuffer<IncomingOscEvent> ringBuffer) {
        this.ringBuffer = ringBuffer;
    }

    public void publish(IncomingOscEvent event) throws Exception {
        if (isActive) {
            ringBuffer.publishEvent(translator, event);
        } else {
            LOG.warn("Disruptor is not active, ignoring message: " + event);
        }
    }

    public void setActive(boolean active) {
        isActive = active;
    }
}

