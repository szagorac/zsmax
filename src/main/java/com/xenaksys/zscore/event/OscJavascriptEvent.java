package com.xenaksys.zscore.event;

import com.xenaksys.zscore.Consts;
import com.xenaksys.zscore.model.id.BeatId;

import java.util.List;

public class OscJavascriptEvent extends OscEvent {

    OscJavascriptEvent(List<Object> arguments, BeatId eventBaseBeat, String destination, long time) {
        super(Consts.OSC_ADDRESS_SCORE_JAVASCRIPT, arguments, eventBaseBeat, destination, time);
    }
}
