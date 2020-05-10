package com.xenaksys.zscore.time.clock;

import com.xenaksys.zscore.model.Clock;

public class SimpleClock implements Clock {

    @Override
    public long getSystemTimeMillis() {
        return System.currentTimeMillis();
    }

    @Override
    public long getElapsedTimeMillis() {
        return 0;
    }

}
