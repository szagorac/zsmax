package com.xenaksys.zscore.client.receive.disruptor;

import com.lmax.disruptor.EventHandler;
import com.lmax.disruptor.dsl.Disruptor;
import com.xenaksys.zscore.event.IncomingOscEvent;
import com.xenaksys.zscore.max.LoggerFactory;
import com.xenaksys.zscore.model.Logger;
import com.xenaksys.zscore.model.OscReceiver;
import com.xenaksys.zscore.model.ZscoreEvent;

public abstract class AbstractReceiveDisruptorEventsProcessor implements OscReceiver {
    static final Logger LOG = LoggerFactory.getLogger(AbstractReceiveDisruptorEventsProcessor.class);


    private final Disruptor<IncomingOscEvent> disruptor;
    private final ProcessorEventHandler eventHandler;
    private final IncomingDisruptorPublisher receiver;

    public AbstractReceiveDisruptorEventsProcessor(Disruptor<IncomingOscEvent> disruptor) {
        this.disruptor = disruptor;
        this.eventHandler = new ProcessorEventHandler();
        this.receiver = new IncomingDisruptorPublisher(disruptor.getRingBuffer());
        this.disruptor.handleEventsWith(eventHandler);
    }

    @Override
    public void process(ZscoreEvent event) {
        if (event == null || !(event instanceof IncomingOscEvent)) {
            return;
        }

        // Publish into Disruptor
        try {
            IncomingOscEvent oscEvent = (IncomingOscEvent) event;
            receiver.publish(oscEvent);
        } catch (Exception e) {
            LOG.error("Failed to publish event: " + event, e);
        }
    }

    public void start() {
        receiver.setActive(true);
    }

    public void stop() {
        receiver.setActive(false);
    }

    protected abstract void processDisruptorEvent(IncomingOscEvent event);

    class ProcessorEventHandler implements EventHandler<IncomingOscEvent> {

        @Override
        public void onEvent(IncomingOscEvent event, long sequence, boolean endOfBatch) throws Exception {
            processDisruptorEvent(event);
        }
    }

}
