package com.xenaksys.zscore.model;

import com.xenaksys.zscore.net.osc.OSCPortOut;

import java.util.Collection;
import java.util.List;
import java.util.Map;

public interface OscPublisher extends Processor {

    void addOscPort(String destination, OSCPortOut port);

    void addOscBroadcastPort(OSCPortOut port);

    OSCPortOut getOutPort(String destination);

    List<OSCPortOut> getBroadcastPorts();

    void resetBroadcastPorts();

    void setPublishPorts(Map<String, OSCPortOut> oscPublishPorts);

    boolean isDestination(String destination, int port);

    void removeDestination(String destination);

    Collection<String> getDestinations();

    void start();
}
