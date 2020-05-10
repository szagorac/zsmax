package com.xenaksys.zscore.util;

import com.xenaksys.zscore.max.LoggerFactory;
import com.xenaksys.zscore.model.Logger;

public class ThreadUtil {
    static final Logger LOG = LoggerFactory.getLogger(ThreadUtil.class);

    public static void doSleep(Thread thread, long milliis) {
        try {
            Thread.sleep(milliis);
        } catch (InterruptedException e) {
            LOG.error("Scheduler interrupted", e);
        }
    }

}
