package com.xenaksys.zscore.max;

import com.xenaksys.zscore.model.Logger;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class LoggerFactory {

    private static final Map<String, MaxLogger> LOGGERS = new ConcurrentHashMap<>();

    private static volatile MaxLogger.LogLevel LOG_LEVEL = MaxLogger.LogLevel.INFO;

    public static Logger getLogger(Class<?> clazz) {
        return LOGGERS.computeIfAbsent(clazz.getName(), k -> new MaxLogger(k, LOG_LEVEL));
    }

    public static void setLogLevel(MaxLogger.LogLevel logLevel) {
        LOG_LEVEL = logLevel;
    }
}
