package com.xenaksys.zscore.client;

import com.lmax.disruptor.dsl.Disruptor;
import com.xenaksys.zscore.Consts;
import com.xenaksys.zscore.client.factory.DisruptorFactory;
import com.xenaksys.zscore.client.publish.osc.OscPublisher;
import com.xenaksys.zscore.client.receive.ZscoreIncomingEventListener;
import com.xenaksys.zscore.client.receive.disruptor.DisruptorEventReceiver;
import com.xenaksys.zscore.client.receive.disruptor.EventReceiver;
import com.xenaksys.zscore.client.receive.osc.OscReceiver;
import com.xenaksys.zscore.event.EventFactory;
import com.xenaksys.zscore.event.HelloEvent;
import com.xenaksys.zscore.event.IncomingOscEvent;
import com.xenaksys.zscore.event.OscEvent;
import com.xenaksys.zscore.event.PingEvent;
import com.xenaksys.zscore.model.Clock;
import com.xenaksys.zscore.model.EventService;
import com.xenaksys.zscore.model.ZscoreEvent;
import com.xenaksys.zscore.model.id.OscListenerId;
import com.xenaksys.zscore.net.osc.OSCPortOut;
import com.xenaksys.zscore.net.osc.OscPortFactory;
import com.xenaksys.zscore.util.SimpleClock;

import java.net.InetAddress;

import static com.xenaksys.zscore.Consts.DEFAULT_OSC_CLIENT_OUT_PORT;
import static com.xenaksys.zscore.Consts.DEFAULT_OSC_CLIENT_PORT;
import static com.xenaksys.zscore.Consts.DEFAULT_OSC_SERVER_PORT;
import static com.xenaksys.zscore.Consts.EMPTY;
import static com.xenaksys.zscore.Consts.ZSCORE_ADDR;

public class ZscoreClient extends Client implements EventService {
    private static final String PROP_APP_NAME = "appName";

    private OscReceiver oscReceiver;
    private com.xenaksys.zscore.model.OscPublisher publisher;
    private EventReceiver receiver;
    private DisruptorEventReceiver disruptorReceiver;
    private EventFactory eventFactory;
    private Disruptor<OscEvent> outDisruptor;
    private Disruptor<IncomingOscEvent> inDisruptor;
    private SimpleClock clock;
    private int serverPort = DEFAULT_OSC_SERVER_PORT;
    private int inPort = DEFAULT_OSC_CLIENT_PORT;
    private int outPort = DEFAULT_OSC_CLIENT_OUT_PORT;

    private InetAddress serverAddr = null;
    private String serverHost = null;
    private String serverOscAddr = null;

    public ZscoreClient(String id) {
        super(id);
    }

    protected void configure() throws Exception {
        eventFactory = new EventFactory();
        initProcessors();
    }

    public void initProcessors() {
        clock = new SimpleClock();

        oscReceiver = new OscReceiver(new OscListenerId(Consts.DEFAULT_ALL_PORTS, getClientAddress().getHostAddress(), "OscReceiveProcessor"), clock);
        inDisruptor = DisruptorFactory.createInDisruptor();
        disruptorReceiver = new DisruptorEventReceiver(this, clock, eventFactory, inDisruptor);

        receiver = new EventReceiver(disruptorReceiver, oscReceiver,
                new OscListenerId(Consts.DEFAULT_ALL_PORTS, getClientAddress().getHostAddress(), "ZsMaxEventReceiver"));
        receiver.init();

        outDisruptor = DisruptorFactory.createOscOutDisruptor();
        publisher = new OscPublisher(outDisruptor);
    }


    protected void onStart() throws Exception {
        if (outDisruptor != null) {
            outDisruptor.start();
        }
        if (publisher != null) {
            publisher.start();
        }
        if (inDisruptor != null) {
            inDisruptor.start();
        }
        if (disruptorReceiver != null) {
            disruptorReceiver.start();
        }
    }

    public static String createClientId(String id) {
        if (id == null) {
            id = EMPTY;
        }
        String appName = id + "ZscoreClient";
        if (properties != null) {
            String propAppName = properties.getProperty(PROP_APP_NAME);
            if (propAppName != null) {
                appName = propAppName;
            }
        }

        String location = getLocation();
        if (location != null) {
            appName += location.toUpperCase();
        }

        return appName;
    }

    public void stop() {
        oscReceiver.stop();
        super.stop();
    }

    public void publish(ZscoreEvent event) {
        publisher.process(event);
    }

    @Override
    public void receive(ZscoreEvent event) {
        receiver.onEvent(event);
    }

    public void subscribe(ZscoreIncomingEventListener listener) {
        disruptorReceiver.addListener(listener);
    }

    public EventFactory getEventFactory() {
        return eventFactory;
    }

    @Override
    public Clock getClock() {
        return clock;
    }

    public com.xenaksys.zscore.model.OscPublisher getPublisher() {
        return publisher;
    }

    public void sendHello() {
        HelloEvent helloEvent = eventFactory.createHelloEvent(serverHost, inPort, outPort, clock.getSystemTimeMillis());
        publisher.process(helloEvent);
    }

    public void sendInscoreHelloReponse() {
        HelloEvent helloEvent = eventFactory.createInscoreHelloEvent(serverHost, clientHost, inPort, outPort, 0, clock.getSystemTimeMillis());
        publisher.process(helloEvent);
    }

    private void sendPingResponseReponse(long serverTime) {
        PingEvent pingEvent = eventFactory.createPingEvent(serverHost, serverTime, inPort, clock.getSystemTimeMillis());
        publisher.process(pingEvent);
    }

    public void addOutPort(InetAddress addr, int port) {
        String remoteAddr = addr.getHostAddress();
        if (!publisher.isDestination(remoteAddr, port)) {
            OSCPortOut outPort = OscPortFactory.createOutPort(addr, port);
            publisher.addOscPort(remoteAddr, outPort);
        }
    }

    public void addInPort(int port) {
        oscReceiver.addListener(receiver, port);
    }

    public void logEvent(ZscoreEvent event) {
        // logProcessor.process(event);
    }

    public InetAddress getClientAddress() {
        return clientAddress;
    }

    public void setServerAddr(InetAddress serverAddr) {
        this.serverAddr = serverAddr;
        this.serverHost = serverAddr.getHostAddress();
    }

    public void setServerPort(int serverPort) {
        this.serverPort = serverPort;
    }

    public int getServerPort() {
        return serverPort;
    }

    public int getInPort() {
        return inPort;
    }

    public void setInPort(int inPort) {
        this.inPort = inPort;
    }

    public int getOutPort() {
        return outPort;
    }

    public void setOutPort(int outPort) {
        this.outPort = outPort;
    }

    public void onSetServerAddr(InetAddress serverAddr) {
        setServerAddr(serverAddr);
        addOutPort(serverAddr, serverPort);
        setServerOscAddress();
        sendHello();
    }

    private void setServerOscAddress() {
        if (serverAddr == null) {
            return;
        }
        serverOscAddr = ZSCORE_ADDR;
    }

    public void onInscoreHello() {
        sendInscoreHelloReponse();
    }

    public void onServerPing(long serverTime) {
        sendPingResponseReponse(serverTime);
    }

    public void onServerHello(String serverAddr) {
        if (serverAddr == null || serverAddr.isEmpty()) {
            return;
        }
        if (serverHost == null) {
            serverHost = serverAddr;
        }
        if (!serverHost.equals(serverAddr)) {
            LOG.warn("Received server hello from address: " + serverAddr + ", existing server address is: " + serverHost);
            serverHost = serverAddr;
        }
    }
}
