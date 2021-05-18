package com.xenaksys.zscore.client.receive.disruptor;

import com.xenaksys.zscore.Consts;
import com.xenaksys.zscore.client.receive.AbstractIncomingEventListener;
import com.xenaksys.zscore.client.receive.osc.OscReceiver;
import com.xenaksys.zscore.max.LoggerFactory;
import com.xenaksys.zscore.model.Logger;
import com.xenaksys.zscore.model.ZscoreEvent;
import com.xenaksys.zscore.model.id.OscListenerId;

public class EventReceiver extends AbstractIncomingEventListener {
    static final Logger LOG = LoggerFactory.getLogger(EventReceiver.class);

    private final DisruptorEventReceiver processor;
    private final OscReceiver eventReceiver;

    public EventReceiver(DisruptorEventReceiver processor, OscReceiver eventReceiver, OscListenerId id) {
        super(id);
        this.processor = processor;
        this.eventReceiver = eventReceiver;
    }

    public void init() {
        eventReceiver.addListener(this, Consts.DEFAULT_OSC_CLIENT_PORT);
    }

    @Override
    public void onEvent(ZscoreEvent event) {
        if (event == null) {
            return;
        }
        processor.process(event);
    }
}
