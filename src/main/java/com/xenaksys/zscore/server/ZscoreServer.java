package com.xenaksys.zscore.server;

import com.lmax.disruptor.dsl.Disruptor;
import com.xenaksys.zscore.Consts;
import com.xenaksys.zscore.event.EventFactory;
import com.xenaksys.zscore.event.HelloEvent;
import com.xenaksys.zscore.event.IncomingOscEvent;
import com.xenaksys.zscore.event.OscEvent;
import com.xenaksys.zscore.event.PingEvent;
import com.xenaksys.zscore.event.ServerHelloEvent;
import com.xenaksys.zscore.model.Clock;
import com.xenaksys.zscore.model.EventService;
import com.xenaksys.zscore.model.OscPublisher;
import com.xenaksys.zscore.model.ZscoreEvent;
import com.xenaksys.zscore.model.id.OscListenerId;
import com.xenaksys.zscore.net.ParticipantStats;
import com.xenaksys.zscore.net.osc.OSCPortOut;
import com.xenaksys.zscore.process.DisruptorFactory;
import com.xenaksys.zscore.process.ZscoreThreadFactory;
import com.xenaksys.zscore.publish.OscDisruptorPublishProcessor;
import com.xenaksys.zscore.publish.OscPortFactory;
import com.xenaksys.zscore.receive.OscReceiveProcessor;
import com.xenaksys.zscore.receive.ZscoreIncomingEventListener;
import com.xenaksys.zscore.server.processor.InServerEventDisruptorProcessor;
import com.xenaksys.zscore.server.receive.ServerEventReceiver;
import com.xenaksys.zscore.time.clock.SimpleClock;

import java.net.InetAddress;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicInteger;

public class ZscoreServer extends Server implements EventService {
    private static final String PROP_APP_NAME = "appName";

    private static final AtomicInteger DEFAULT_POOL_NUMBER = new AtomicInteger(1);


    private OscReceiveProcessor oscEventReceiver;
    private OscPublisher oscEventPublisher;
    private ServerEventReceiver serverEventReceiver;
    private InServerEventDisruptorProcessor eventProcessor;
    private EventFactory eventFactory;
    private Disruptor<OscEvent> outOscDisruptor;
    private Disruptor<IncomingOscEvent> inDisruptor;
    private SimpleClock clock;

    private final Map<String, InetAddress> participants = new ConcurrentHashMap<>();
    private final Map<String, ParticipantStats> participantStats = new ConcurrentHashMap<>();
    private PingEvent pingEvent;

    private final String subnetMask = Consts.DEFAULT_SUBNET_MASK;
    private final int inscorePort = Consts.DEFAULT_OSC_PORT;
    private final InetAddress broadcastAddress = null;

    protected ZscoreServer(String id) {
        super(id);
    }

    public static Server buildStandAlone() {
        String serverId = createServerId();
        return new ZscoreServer(serverId);
    }

    protected void configure() throws Exception {
        eventFactory = new EventFactory();
        initProcessors();
        initNetInfo();
    }

    public void initNetInfo() {
        try {

        } catch (Exception e) {
            LOG.error("Failed to init net info", e);
        }
    }

    public void initProcessors() {
        clock = new SimpleClock();

        oscEventReceiver = new OscReceiveProcessor(new OscListenerId(Consts.DEFAULT_ALL_PORTS, getServerAddress().getHostAddress(), "OscReceiveProcessor"), clock);

        inDisruptor = DisruptorFactory.createInDisruptor();
        eventProcessor = new InServerEventDisruptorProcessor(this, clock, eventFactory, inDisruptor);

        serverEventReceiver = new ServerEventReceiver(eventProcessor, oscEventReceiver,
                new OscListenerId(Consts.DEFAULT_ALL_PORTS, getServerAddress().getHostAddress(), "ServerEventReceiver"));
        serverEventReceiver.init();

        outOscDisruptor = DisruptorFactory.createOscOutDisruptor();
        oscEventPublisher = new OscDisruptorPublishProcessor(outOscDisruptor);

        ZscoreThreadFactory threadFactory = new ZscoreThreadFactory(Consts.SCHEDULER_THREAD_FACTORY + "_" + DEFAULT_POOL_NUMBER.getAndIncrement());
        ExecutorService executor = Executors.newSingleThreadExecutor(threadFactory);
    }


    protected void onStart() throws Exception {
        if (outOscDisruptor != null) {
            outOscDisruptor.start();
        }
        if (oscEventPublisher != null) {
            oscEventPublisher.start();
        }
        if (inDisruptor != null) {
            inDisruptor.start();
        }
        if (eventProcessor != null) {
            eventProcessor.start();
        }
    }

    private static String createServerId() {
        String appName = "ZscoreServer";
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
        oscEventReceiver.stop();
        super.stop();
    }

    public void publish(ZscoreEvent event) {
        oscEventPublisher.process(event);
    }

    @Override
    public void receive(ZscoreEvent event) {
        serverEventReceiver.onEvent(event);
    }

    public void subscribe(ZscoreIncomingEventListener listener) {
        eventProcessor.addListener(listener);
    }

    public EventFactory getEventFactory() {
        return eventFactory;
    }

    @Override
    public Clock getClock() {
        return clock;
    }

    public OscPublisher getOscEventPublisher() {
        return oscEventPublisher;
    }

    public boolean isParticipant(InetAddress addr) {
        if (addr == null) {
            return false;
        }

        String ip = addr.getHostAddress();
        return participants.containsKey(ip);
    }

    public void addParticipant(InetAddress addr) {
        if (addr == null) {
            return;
        }
        participants.put(addr.getHostAddress(), addr);
    }

    public void addParticipantStats(ParticipantStats stats) {
        if (stats == null || stats.getIpAddress() == null) {
            return;
        }
        participantStats.put(stats.getIpAddress(), stats);
    }

    public ParticipantStats getParticipantStats(String ipAddress) {
        return participantStats.get(ipAddress);
    }

    public InetAddress getParticipantAddress(String ipAddress) {
        return participants.get(ipAddress);
    }

    public Collection<String> getParticipants() {
        return participants.keySet();
    }

    public void sendHello(String remoteAddr) {
        HelloEvent helloEvent = eventFactory.createHelloEvent(remoteAddr, 0L);
        oscEventPublisher.process(helloEvent);
    }

    public void sendServerHelloEvent(String remoteAddr) {
        ServerHelloEvent pingEvent = eventFactory.createServerHelloEvent(getServerAddress().getHostAddress(), remoteAddr, 0L);
        oscEventPublisher.process(pingEvent);
    }

    public void addOutPort(InetAddress addr, int port) {
        String remoteAddr = addr.getHostAddress();
        if (!oscEventPublisher.isDestination(remoteAddr, port)) {
            OSCPortOut outPort = OscPortFactory.createOutPort(addr, port);
            oscEventPublisher.addOscPort(remoteAddr, outPort);
        }
    }

    public void addBroadcastPort(InetAddress addr, int port) {
        if (addr == null) {
            return;
        }

        List<OSCPortOut> bPorts = oscEventPublisher.getBroadcastPorts();
        for (OSCPortOut bPort : bPorts) {
            if (bPort.getAddress().equals(addr)) {
                LOG.info("addBroadcastPort: broadcast addr {} already registered, ignoring add broadcast port", addr.getHostAddress());
                return;
            }
        }

        OSCPortOut broadcastPort = OscPortFactory.createOutPort(addr, port);
        if (broadcastPort != null) {
            oscEventPublisher.addOscBroadcastPort(broadcastPort);
        }
    }

    public void addInstrumentOutPort(InetAddress addr, String instrument) {
        String remoteAddr = addr.getHostAddress();
        OSCPortOut outPort = oscEventPublisher.getOutPort(remoteAddr);
        if (outPort == null) {
            LOG.error("Add Instrument: Failed to find out port for instrument: " + instrument + " addr: " + remoteAddr);
            return;
        }

        oscEventPublisher.addOscPort(instrument, outPort);
    }

    public void addInPort(int port) {
        oscEventReceiver.addListener(serverEventReceiver, port);
    }

    public void logEvent(ZscoreEvent event) {
        // logProcessor.process(event);
    }

    public InetAddress getServerAddress() {
        return serverAddress;
    }
}
