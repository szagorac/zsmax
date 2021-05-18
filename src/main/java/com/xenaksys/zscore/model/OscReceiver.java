package com.xenaksys.zscore.model;

public interface OscReceiver extends Processor {

    void start();

    void addListener(ZscoreIncomingEventListener listener);

    void notifyListeners(ZscoreEvent event);
}
