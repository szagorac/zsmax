package com.xenaksys.zscore.client.receive.osc;

import com.xenaksys.zscore.client.receive.ZscoreIncomingEventListener;
import com.xenaksys.zscore.event.IncomingOscEvent;
import com.xenaksys.zscore.max.LoggerFactory;
import com.xenaksys.zscore.model.Clock;
import com.xenaksys.zscore.model.Logger;
import com.xenaksys.zscore.net.osc.OSCMessage;
import com.xenaksys.zscore.net.osc.utility.SzOSCPacketDispatcher;

import java.util.concurrent.ArrayBlockingQueue;


public class AsyncDispatcher extends SzOSCPacketDispatcher {
    static final Logger LOG = LoggerFactory.getLogger(OscReceiver.class);

    private final ArrayBlockingQueue<IncomingOscEvent> inQueue = new ArrayBlockingQueue<>(1000);

    private volatile boolean isActive = false;

    public AsyncDispatcher(Clock clock) {
        super(clock);
        isActive = true;
        Consumer consumer = new Consumer();
        Thread worker = new Thread(consumer);
        worker.setDaemon(true);
        worker.start();
    }

    protected void dispatchMessage(OSCMessage message, long currentTime) {
        if (!isActive) {
            return;
        }

        //TODO optimise - avoid new constructor
        IncomingOscEvent event = new IncomingOscEvent(message, currentTime);

        try {
            inQueue.put(event);
        } catch (InterruptedException e) {
            LOG.error("Interrupted osc dispatcher", e);
        }

    }

    public boolean isActive() {
        return isActive;
    }

    public void setActive(boolean active) {
        isActive = active;
    }

    public void stop() {
        setActive(false);
    }

    class Consumer implements Runnable {
        public void run() {
            try {
                while (isActive) {
                    IncomingOscEvent event = inQueue.take();
                    for (ZscoreIncomingEventListener listener : listeners) {
                        listener.onEvent(event);
                    }
                }

            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            System.out.println("Exiting Dispatcher. ");
        }
    }
}
