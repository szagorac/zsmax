package com.xenaksys.zscore.client.receive;

import java.util.List;

public interface ZscoreDistributorListener extends ZscoreIncomingEventListener {

    List<ZscoreIncomingEventListener> getListeners();

    void addListener(ZscoreIncomingEventListener listener);

    void removeListener(ZscoreIncomingEventListener listener);

}
