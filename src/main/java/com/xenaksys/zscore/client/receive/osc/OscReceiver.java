package com.xenaksys.zscore.client.receive.osc;

import com.xenaksys.zscore.Consts;
import com.xenaksys.zscore.client.receive.AbstractIncomingEventListener;
import com.xenaksys.zscore.event.IncomingOscEvent;
import com.xenaksys.zscore.max.LoggerFactory;
import com.xenaksys.zscore.model.Clock;
import com.xenaksys.zscore.model.Logger;
import com.xenaksys.zscore.model.Processor;
import com.xenaksys.zscore.model.ZscoreEvent;
import com.xenaksys.zscore.model.ZscoreIncomingEventListener;
import com.xenaksys.zscore.model.id.OscListenerId;
import com.xenaksys.zscore.net.osc.OSCPortIn;
import com.xenaksys.zscore.net.osc.SzOSCPortIn;
import gnu.trove.map.hash.TIntObjectHashMap;

import java.net.SocketException;
import java.util.ArrayList;
import java.util.List;


public class OscReceiver extends AbstractIncomingEventListener implements Processor {
    static final Logger LOG = LoggerFactory.getLogger(OscReceiver.class);

    private final TIntObjectHashMap<SzOSCPortIn> inPorts = new TIntObjectHashMap<>();
    private final TIntObjectHashMap<List<ZscoreIncomingEventListener>> listeners = new TIntObjectHashMap<>();
    private final List<AsyncDispatcher> dispatchers = new ArrayList<>();

    private final Clock clock;

    public OscReceiver(OscListenerId id, Clock clock) {
        super(id);
        this.clock = clock;
    }

    private void listenOnPort(int port) {
        try {
            if (inPorts.containsKey(port)) {
                LOG.warn("Already listening on port: " + port);
                return;
            }
            AsyncDispatcher dispatcher = new AsyncDispatcher(clock);
            dispatchers.add(dispatcher);
            SzOSCPortIn in = new SzOSCPortIn(port, dispatcher);
            inPorts.put(port, in);
        } catch (SocketException e) {
            LOG.error("Failed to add in port: " + port, e);
        }
    }

    public void addListener(ZscoreIncomingEventListener listener, int port) {
        if (port == 0) {
            LOG.warn("Invalid port");
            return;
        }
        addPortListener(port, listener);
    }

    private void addPortListener(int port, ZscoreIncomingEventListener listener) {
        SzOSCPortIn portIn = inPorts.get(port);
        if (port != Consts.DEFAULT_ALL_PORTS && portIn == null) {
            listenOnPort(port);
            portIn = inPorts.get(port);
            portIn.addListener(this);
            portIn.startListening();
        }

        if (port != Consts.DEFAULT_ALL_PORTS && portIn == null) {
            LOG.error("Failed to add port: " + port);
            return;
        }

        List<ZscoreIncomingEventListener> pl = listeners.get(port);
        if (pl == null) {
            pl = new ArrayList<>();
            listeners.put(port, pl);
        }
        if (!pl.contains(listener)) {
            pl.add(listener);
        }
    }

    @Override
    public void process(ZscoreEvent event) {
        if (event == null) {
            return;
        }

        IncomingOscEvent incoming = (IncomingOscEvent) event;
        notifyListeners(incoming.getLocalPort(), incoming);
        notifyListeners(Consts.DEFAULT_ALL_PORTS, incoming);
    }

    private void notifyListeners(int port, IncomingOscEvent event) {
        List<ZscoreIncomingEventListener> toNotify = listeners.get(port);
        if (toNotify == null) {
            return;
        }
        for (ZscoreIncomingEventListener listener : toNotify) {
            listener.onEvent(event);
        }
    }

    public void stop() {
        for (Object obj : inPorts.values()) {
            OSCPortIn port = (OSCPortIn) obj;
            if (port.isListening()) {
                port.stopListening();
            }
        }

        for (AsyncDispatcher dispatcher : dispatchers) {
            dispatcher.stop();
        }
    }

    public void start() {
        for (Object obj : inPorts.values()) {
            OSCPortIn port = (OSCPortIn) obj;
            if (!port.isListening()) {
                port.startListening();
            }
        }
    }

    @Override
    public void onEvent(ZscoreEvent event) {
        process(event);
    }

}
