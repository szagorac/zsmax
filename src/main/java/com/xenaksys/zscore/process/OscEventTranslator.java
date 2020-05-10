package com.xenaksys.zscore.process;

import com.lmax.disruptor.EventTranslatorOneArg;
import com.xenaksys.zscore.event.OscEvent;
import com.xenaksys.zscore.max.LoggerFactory;
import com.xenaksys.zscore.model.Logger;

import java.util.ArrayList;
import java.util.List;

public class OscEventTranslator implements EventTranslatorOneArg<OscEvent, OscEvent> {
    static final Logger LOG = LoggerFactory.getLogger(OscEventTranslator.class);


    @Override
    public void translateTo(OscEvent event, long sequence, OscEvent in) {
        if (in == null || event == null) {
            return;
        }

        event.setAddress(in.getAddress());
        event.setDestination(in.getDestination());
        event.setEventBaseBeat(in.getEventBaseBeat());
        long creationTime = in.getCreationTime();
//long diff = System.currentTimeMillis() - creationTime;
//LOG.debug("Sending message time diff: " + diff + " creationTime: " + creationTime);
        event.setTime(creationTime);

        List<Object> args = in.getArguments();
        if (args == null) {
            return;
        }

        List<Object> dargs = event.getArguments();
        if (dargs == null) {
            dargs = new ArrayList<>();
            event.setArguments(dargs);
        }

        dargs.clear();

        for (Object arg : args) {
            dargs.add(arg);
        }
    }
}

