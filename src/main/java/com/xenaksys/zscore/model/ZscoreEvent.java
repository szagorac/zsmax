package com.xenaksys.zscore.model;

import com.xenaksys.zscore.event.EventType;
import com.xenaksys.zscore.model.id.BeatId;

public interface ZscoreEvent {

    EventType getEventType();

    BeatId getEventBaseBeat();

    long getCreationTime();

}
