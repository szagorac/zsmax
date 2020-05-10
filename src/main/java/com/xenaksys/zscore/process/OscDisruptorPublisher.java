package com.xenaksys.zscore.process;

import com.lmax.disruptor.RingBuffer;
import com.xenaksys.zscore.event.OscEvent;
import com.xenaksys.zscore.max.LoggerFactory;
import com.xenaksys.zscore.model.Logger;

public class OscDisruptorPublisher {
    static final Logger LOG = LoggerFactory.getLogger(OscDisruptorPublisher.class);

    private final RingBuffer<OscEvent> ringBuffer;
    private final OscEventTranslator translator = new OscEventTranslator();

    private volatile boolean isActive = false;

    public OscDisruptorPublisher(RingBuffer<OscEvent> ringBuffer) {
        this.ringBuffer = ringBuffer;
    }

    public void publish(OscEvent event) throws Exception {
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

