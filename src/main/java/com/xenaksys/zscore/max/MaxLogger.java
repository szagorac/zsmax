package com.xenaksys.zscore.max;

import com.xenaksys.zscore.model.Logger;

public class MaxLogger implements Logger {
    private static final String WARN = "WARN: ";
    private static final String DEBUG = "DEBUG: ";
    private static final String EXCEPTION_MSG = " msg: ";
    private static final String EXCEPTION = "Exception: ";

    public enum LogLevel {DEBUG, INFO, WARN, ERROR}

    ;

    private final String name;
    private final LogLevel logLevel;

    public MaxLogger(String name, LogLevel logLevel) {
        this.name = name;
        this.logLevel = logLevel;
    }

    public void info(String msg) {
        if (logLevel == LogLevel.WARN || logLevel == LogLevel.ERROR) {
            return;
        }
        if (name == null) {
            ZsMax.logInfo(msg);
        } else {
            ZsMax.logInfo(name, msg);
        }
    }

    public void error(String msg) {
        if (name == null) {
            ZsMax.logError(msg);
        } else {
            ZsMax.logError(name, msg);
        }
    }

    @Override
    public void error(String msg, Exception e) {
        error(msg + EXCEPTION_MSG + e.getMessage());

        StackTraceElement[] stackTraceElements = e.getStackTrace();
        if (stackTraceElements == null) {
            return;
        }
        for (StackTraceElement element : stackTraceElements) {
            error(EXCEPTION + element.toString());
            ;
        }
    }

    public void warn(String msg) {
        if (logLevel == LogLevel.ERROR) {
            return;
        }
        info(WARN + msg);
    }

    @Override
    public void debug(String msg) {
        if (logLevel == LogLevel.INFO || logLevel == LogLevel.WARN || logLevel == LogLevel.ERROR) {
            return;
        }
        info(DEBUG + msg);
    }
}
