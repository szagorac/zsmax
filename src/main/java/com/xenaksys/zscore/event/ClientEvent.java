package com.xenaksys.zscore.event;

import com.xenaksys.zscore.model.ZscoreEvent;
import com.xenaksys.zscore.model.id.BeatId;

public abstract class ClientEvent implements ZscoreEvent {
    private final long time;

    public ClientEvent(long time) {
        this.time = time;
    }

    public abstract ClientEventType getClientEventType();

    @Override
    public EventType getEventType() {
        return EventType.CLIENT;
    }

    @Override
    public BeatId getEventBaseBeat() {
        return null;
    }

    @Override
    public long getCreationTime() {
        return time;
    }

    public boolean isScoreEvent() {
        return false;
    }

}
