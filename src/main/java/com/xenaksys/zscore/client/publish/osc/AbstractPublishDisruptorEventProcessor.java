package com.xenaksys.zscore.client.publish.osc;

import com.lmax.disruptor.EventHandler;
import com.lmax.disruptor.dsl.Disruptor;
import com.xenaksys.zscore.client.publish.disruptor.OutgoingDisruptorPublisher;
import com.xenaksys.zscore.event.OscEvent;
import com.xenaksys.zscore.max.LoggerFactory;
import com.xenaksys.zscore.model.Logger;
import com.xenaksys.zscore.model.OscPublisher;
import com.xenaksys.zscore.model.ZscoreEvent;
import com.xenaksys.zscore.net.osc.OSCPortOut;

import java.util.ArrayList;
import java.util.List;

public abstract class AbstractPublishDisruptorEventProcessor implements OscPublisher {
    static final Logger LOG = LoggerFactory.getLogger(AbstractPublishDisruptorEventProcessor.class);


    private final Disruptor<OscEvent> disruptor;
    private final ProcessorEventHandler eventHandler;
    private final OutgoingDisruptorPublisher publisher;
    private final List<OSCPortOut> broadcastPorts = new ArrayList<>();

    public AbstractPublishDisruptorEventProcessor(Disruptor<OscEvent> disruptor) {
        this.disruptor = disruptor;
        this.eventHandler = new ProcessorEventHandler();
        this.publisher = new OutgoingDisruptorPublisher(disruptor.getRingBuffer());
        this.disruptor.handleEventsWith(eventHandler);
    }

    @Override
    public void process(ZscoreEvent event) {
        if (event == null || !(event instanceof OscEvent)) {
            return;
        }

        try {
            OscEvent oscEvent = (OscEvent) event;
            publisher.publish(oscEvent);
        } catch (Exception e) {
            LOG.error("Failed to publish event: " + event, e);
        }

    }

    @Override
    public void addOscBroadcastPort(OSCPortOut port) {
        if (port != null) {
            this.broadcastPorts.add(port);
        }
    }

    @Override
    public List<OSCPortOut> getBroadcastPorts() {
        return broadcastPorts;
    }

    @Override
    public void resetBroadcastPorts() {
        broadcastPorts.clear();
    }

    public void start() {
        publisher.setActive(true);
    }

    public void stop() {
        publisher.setActive(false);
    }

    protected abstract void processInternal(OscEvent event);


    class ProcessorEventHandler implements EventHandler<OscEvent> {

        @Override
        public void onEvent(OscEvent event, long sequence, boolean endOfBatch) throws Exception {
            processInternal(event);
        }
    }

}
