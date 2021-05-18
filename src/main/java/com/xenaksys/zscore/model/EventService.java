package com.xenaksys.zscore.model;

import com.xenaksys.zscore.event.EventFactory;

public interface EventService {

    void subscribe(ZscoreIncomingEventListener listener);

    void publish(ZscoreEvent event);

    void receive(ZscoreEvent event);

    void stop();

    void start();

    EventFactory getEventFactory();

    Clock getClock();

}
