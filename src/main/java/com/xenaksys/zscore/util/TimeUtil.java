package com.xenaksys.zscore.util;


import java.text.SimpleDateFormat;
import java.util.Date;

public class TimeUtil {
    private final static SimpleDateFormat timeFormatter = new SimpleDateFormat("HH:mm:ss.SSS");


    public static String formatTime(long time) {
        Date date = new Date(time);
        return timeFormatter.format(date);
    }


}
