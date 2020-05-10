package com.xenaksys.zscore.receive;


import com.xenaksys.zscore.model.id.OscListenerId;

public abstract class AbstractIncomingEventListener implements ZscoreIncomingEventListener {

    private final OscListenerId listenerId;

    public AbstractIncomingEventListener(OscListenerId listenerId) {
        this.listenerId = listenerId;
    }

    @Override
    public OscListenerId getId() {
        return listenerId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof AbstractIncomingEventListener)) return false;

        AbstractIncomingEventListener that = (AbstractIncomingEventListener) o;

        return listenerId.equals(that.listenerId);

    }

    @Override
    public int hashCode() {
        return listenerId.hashCode();
    }

    @Override
    public String toString() {
        return "ZscoreListener{" +
                "listenerId=" + listenerId +
                '}';
    }
}
