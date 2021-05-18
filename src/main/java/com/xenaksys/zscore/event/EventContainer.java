package com.xenaksys.zscore.event;

import com.xenaksys.zscore.model.ZscoreEvent;

public class EventContainer {

    private ZscoreEvent event;

    public EventContainer() {
    }

    public EventContainer(ZscoreEvent event) {
        this.event = event;
    }

    public ZscoreEvent getEvent() {
        return event;
    }

    public void setEvent(ZscoreEvent event) {
        this.event = event;
    }
}
