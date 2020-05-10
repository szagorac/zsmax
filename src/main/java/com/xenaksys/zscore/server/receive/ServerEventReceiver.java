package com.xenaksys.zscore.server.receive;

import com.xenaksys.zscore.Consts;
import com.xenaksys.zscore.max.LoggerFactory;
import com.xenaksys.zscore.model.Logger;
import com.xenaksys.zscore.model.ZscoreEvent;
import com.xenaksys.zscore.model.id.OscListenerId;
import com.xenaksys.zscore.receive.AbstractIncomingEventListener;
import com.xenaksys.zscore.receive.OscReceiveProcessor;
import com.xenaksys.zscore.server.processor.InServerEventDisruptorProcessor;

public class ServerEventReceiver extends AbstractIncomingEventListener {
    static final Logger LOG = LoggerFactory.getLogger(ServerEventReceiver.class);

    private final InServerEventDisruptorProcessor processor;
    private final OscReceiveProcessor eventReceiver;

    public ServerEventReceiver(InServerEventDisruptorProcessor processor, OscReceiveProcessor eventReceiver, OscListenerId id) {
        super(id);
        this.processor = processor;
        this.eventReceiver = eventReceiver;
    }

    public void init() {
        eventReceiver.addListener(this, Consts.DEFAULT_OSC_SERVER_PORT);
    }

    @Override
    public void onEvent(ZscoreEvent event) {
        if (event == null) {
            return;
        }
        processor.process(event);
    }
}
