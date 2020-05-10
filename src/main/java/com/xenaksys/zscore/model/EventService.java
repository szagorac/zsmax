package com.xenaksys.zscore.model;

import com.xenaksys.zscore.event.EventFactory;
import com.xenaksys.zscore.receive.ZscoreIncomingEventListener;

public interface EventService {

    void subscribe(ZscoreIncomingEventListener listener);

    void publish(ZscoreEvent event);

    void receive(ZscoreEvent event);

    void stop();

    EventFactory getEventFactory();

    Clock getClock();

}
