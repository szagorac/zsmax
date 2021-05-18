package com.xenaksys.zscore.client.factory;

import com.xenaksys.zscore.Consts;
import com.xenaksys.zscore.max.LoggerFactory;
import com.xenaksys.zscore.model.Logger;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

public class ZscoreThreadFactory implements ThreadFactory {
    static final Logger LOG = LoggerFactory.getLogger(ZscoreThreadFactory.class);

    private final ThreadGroup group;
    private final AtomicInteger threadNumber = new AtomicInteger(1);
    private final String namePrefix;

    public ZscoreThreadFactory(String prefix) {
        SecurityManager s = System.getSecurityManager();
        group = (s != null) ? s.getThreadGroup() : Thread.currentThread().getThreadGroup();
        namePrefix = prefix + Consts.DEFAULT_THREAD_SUFFIX;
    }

    public Thread newThread(Runnable r) {
        int threadNo = threadNumber.getAndIncrement();
        if (threadNo > 1) {
            LOG.warn("Creating multiple threads in factory: " + namePrefix);
        }

        String threadName = namePrefix + threadNo;
        LOG.info("Creating Thread: " + threadName);
        Thread t = new Thread(group, r, threadName, 0);
        if (t.isDaemon()) {
            t.setDaemon(false);
        }
        if (t.getPriority() != Thread.NORM_PRIORITY) {
            t.setPriority(Thread.NORM_PRIORITY);
        }
        return t;
    }

    public String getNamePrefix() {
        return namePrefix;
    }
}
