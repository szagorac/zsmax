package com.xenaksys.zscore.model;

import com.xenaksys.zscore.model.id.OscListenerId;

public interface ZscoreIncomingEventListener {

    void onEvent(ZscoreEvent event);

    OscListenerId getId();

}
