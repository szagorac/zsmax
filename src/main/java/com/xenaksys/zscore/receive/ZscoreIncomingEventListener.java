package com.xenaksys.zscore.receive;

import com.xenaksys.zscore.model.ZscoreEvent;
import com.xenaksys.zscore.model.id.OscListenerId;

public interface ZscoreIncomingEventListener {

    void onEvent(ZscoreEvent event);

    OscListenerId getId();

}
