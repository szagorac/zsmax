package com.xenaksys.zscore.max;

import com.xenaksys.zscore.Consts;
import com.xenaksys.zscore.client.ZscoreClient;
import com.xenaksys.zscore.model.Logger;

import java.util.Map;
import java.util.Properties;
import java.util.concurrent.ConcurrentHashMap;

public class LoggerFactory {

    private static final Map<String, MaxLogger> LOGGERS = new ConcurrentHashMap<>();

    private static volatile MaxLogger.LogLevel LOG_LEVEL = MaxLogger.LogLevel.INFO;

    public static boolean isUseLog4j = false;
    public static boolean isUseMaxConsole = true;

    static {
        init();
    }

    private static void init() {
        try {
            Properties props = ZscoreClient.getProperties();
            if (props == null) {
                return;
            }

            String useLog4jStr = props.getProperty(Consts.PROP_LOG_USE_LOG4J);
            if (useLog4jStr != null) {
                isUseLog4j = Boolean.parseBoolean(useLog4jStr);
            }
            String useLogMaxConsole = props.getProperty(Consts.PROP_LOG_USE_MAX_CONSOLE);
            if (useLogMaxConsole != null) {
                isUseMaxConsole = Boolean.parseBoolean(useLogMaxConsole);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static Logger getLogger(Class<?> clazz) {
        return LOGGERS.computeIfAbsent(clazz.getName(), k -> new MaxLogger(clazz, LOG_LEVEL));
    }

    public static void setLogLevel(MaxLogger.LogLevel logLevel) {
        LOG_LEVEL = logLevel;
    }
}
