package com.xenaksys.zscore.publish;

import com.xenaksys.zscore.Consts;
import com.xenaksys.zscore.event.EventType;
import com.xenaksys.zscore.event.OscEvent;
import com.xenaksys.zscore.max.LoggerFactory;
import com.xenaksys.zscore.model.Logger;
import com.xenaksys.zscore.model.OscPublisher;
import com.xenaksys.zscore.model.ZscoreEvent;
import com.xenaksys.zscore.net.osc.OSCMessage;
import com.xenaksys.zscore.net.osc.OSCPortOut;

import java.net.InetAddress;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class OscPublishProcessor implements OscPublisher {
    static final Logger LOG = LoggerFactory.getLogger(OscPublishProcessor.class);

    private Map<String, OSCPortOut> oscPublishPorts = new ConcurrentHashMap<>();
    private final List<String> toRemove = new ArrayList<>();
    private final List<OSCPortOut> broadcastPorts = new ArrayList<>();

    public OscPublishProcessor(Map<String, OSCPortOut> oscPublishPorts) {
        this.oscPublishPorts = oscPublishPorts;
    }

    public OscPublishProcessor() {
    }

    @Override
    public void addOscPort(String destination, OSCPortOut port) {
        if (port == null || destination == null) {
            return;
        }

        InetAddress inetAddress = port.getAddress();
        if (inetAddress == null) {
            return;
        }

        String hostAddr = inetAddress.getHostAddress();
        if (hostAddr == null) {
            return;
        }

        toRemove.clear();
        for (String outKey : oscPublishPorts.keySet()) {
            OSCPortOut outPort = oscPublishPorts.get(outKey);
            InetAddress outInetAddress = outPort.getAddress();
            String outHostAddr = outInetAddress.getHostAddress();
            if (hostAddr.equals(outHostAddr)) {
                LOG.warn("Already have out port with the same IP address for destination: " + outKey);
                if (hostAddr.equals(outKey)) {
                    LOG.warn("Existing out port is allowed; IP address destination: " + outKey);
                } else {
                    LOG.warn("Removing existing out port mapping for a different destination: " + outKey);
                    toRemove.add(outKey);
                }
            }
        }

        for (String key : toRemove) {
            oscPublishPorts.remove(key);
        }

        oscPublishPorts.put(destination, port);
    }

    @Override
    public void addOscBroadcastPort(OSCPortOut port) {
        if (port != null) {
            this.broadcastPorts.add(port);
        }
    }

    @Override
    public OSCPortOut getOutPort(String destination) {
        return oscPublishPorts.get(destination);
    }

    @Override
    public List<OSCPortOut> getBroadcastPorts() {
        return broadcastPorts;
    }

    @Override
    public void resetBroadcastPorts() {
        broadcastPorts.clear();
    }

    @Override
    public void setPublishPorts(Map<String, OSCPortOut> oscPublishPorts) {
        this.oscPublishPorts = oscPublishPorts;
    }

    @Override
    public boolean isDestination(String destination, int port) {
        if (!oscPublishPorts.containsKey(destination)) {
            return false;
        }

        OSCPortOut portOut = oscPublishPorts.get(destination);
        int outPort = portOut.getPort();
        return port == outPort;
    }

    @Override
    public void removeDestination(String destination) {
        oscPublishPorts.remove(destination);
    }

    @Override
    public Collection<String> getDestinations() {
        return oscPublishPorts.keySet();
    }

    @Override
    public void start() {

    }

    @Override
    public void process(ZscoreEvent event) {
        EventType type = event.getEventType();
        if (EventType.OSC != type) {
            LOG.error("Received unexpected event type: " + type);
            return;
        }

        OscEvent oscEvent = (OscEvent) event;

        String address = oscEvent.getAddress();
        Collection<Object> args = oscEvent.getArguments();

        String destination = oscEvent.getDestination();
        if (destination == null) {
            destination = Consts.DEFAULT_OSC_PORT_NAME;
        }

        long creationTime = oscEvent.getCreationTime();

        if (Consts.ALL_DESTINATIONS.equals(destination)) {
            for (OSCPortOut port : oscPublishPorts.values()) {
                send(port, address, args, creationTime);
            }
        } else {

            OSCPortOut port = oscPublishPorts.get(destination);
            if (port == null) {
//            LOG.error("Failed to find OSC port for destination: " + destination);
                return;
            }

            send(port, address, args, creationTime);
        }
    }

    protected void send(OSCPortOut port, String address, Collection<Object> args, long creationTime) {
        if (port == null || address == null || args == null) {
            return;
        }

        OSCMessage msg = new OSCMessage(address, args);

        long diff = System.currentTimeMillis() - creationTime;
        LOG.debug("Sending message time diff: " + diff);

        sendMessage(msg, port);
    }

    protected void sendMessage(OSCMessage msg, OSCPortOut port) {
        try {
//            LOG.info("Sending msg address: " + msg.getAddress() + " args: " + msg.getArguments() + " address: " + port.getAddress().getHostAddress() + " port: " + port.getPort());
            port.send(msg);
        } catch (Exception e) {
            LOG.error("Failed to send message", e);
        }
    }
}
