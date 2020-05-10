package com.xenaksys.zscore.process;

import com.lmax.disruptor.dsl.Disruptor;
import com.xenaksys.zscore.Consts;
import com.xenaksys.zscore.event.IncomingOscEvent;
import com.xenaksys.zscore.event.OscEvent;
import com.xenaksys.zscore.max.LoggerFactory;
import com.xenaksys.zscore.model.Logger;

import java.util.concurrent.atomic.AtomicInteger;

public class DisruptorFactory {
    static final Logger LOG = LoggerFactory.getLogger(DisruptorFactory.class);

    private static final AtomicInteger OSC_OUT_POOL_NUMBER = new AtomicInteger(1);
    private static final AtomicInteger IN_POOL_NUMBER = new AtomicInteger(1);

    public static Disruptor<OscEvent> createOscOutDisruptor() {
        int bufferSize = 512;
        OscEventFactory eventFactory = new OscEventFactory();
        ZscoreThreadFactory threadFactory = new ZscoreThreadFactory(Consts.DISRUPTOR_OSC_OUT_THREAD_FACTORY + "_" + OSC_OUT_POOL_NUMBER.getAndIncrement());
        LOG.info("Created thread factory: " + threadFactory.getNamePrefix());
        return new Disruptor<>(eventFactory, bufferSize, threadFactory);
    }

    public static Disruptor<IncomingOscEvent> createInDisruptor() {
        int bufferSize = 512;
        IncomingOscEventFactory eventFactory = new IncomingOscEventFactory();
        ZscoreThreadFactory threadFactory = new ZscoreThreadFactory(Consts.DISRUPTOR_IN_THREAD_FACTORY + "_" + IN_POOL_NUMBER.getAndIncrement());
        LOG.info("Created thread factory: " + threadFactory.getNamePrefix());
        return new Disruptor<>(eventFactory, bufferSize, threadFactory);
    }

}
