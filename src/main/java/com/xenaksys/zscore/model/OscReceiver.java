package com.xenaksys.zscore.model;

import com.xenaksys.zscore.client.receive.ZscoreIncomingEventListener;

public interface OscReceiver extends Processor {

    void start();

    void addListener(ZscoreIncomingEventListener listener);

    void notifyListeners(ZscoreEvent event);
}
