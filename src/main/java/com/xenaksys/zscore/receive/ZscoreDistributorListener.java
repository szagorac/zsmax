package com.xenaksys.zscore.receive;

import java.util.List;

public interface ZscoreDistributorListener extends ZscoreIncomingEventListener {

    List<ZscoreIncomingEventListener> getListeners();

    void addListener(ZscoreIncomingEventListener listener);

    void removeListener(ZscoreIncomingEventListener listener);

}
