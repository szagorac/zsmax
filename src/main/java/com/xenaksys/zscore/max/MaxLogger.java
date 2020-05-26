package com.xenaksys.zscore.max;

import com.xenaksys.zscore.model.Logger;

public class MaxLogger implements Logger {
    private static final String WARN = "WARN: ";
    private static final String DEBUG = "DEBUG: ";
    private static final String EXCEPTION_MSG = " msg: ";
    private static final String EXCEPTION = "Exception: ";

    private final org.slf4j.Logger log4J;

    public enum LogLevel {DEBUG, INFO, WARN, ERROR}

    private final String name;
    private final LogLevel logLevel;

    public MaxLogger(Class<?> clazz, LogLevel logLevel) {
        this.name = clazz.getName();
        this.logLevel = logLevel;
        this.log4J = org.slf4j.LoggerFactory.getLogger(clazz);
    }

    public void info(String msg) {
        if (logLevel == LogLevel.WARN || logLevel == LogLevel.ERROR) {
            return;
        }
        if (LoggerFactory.isUseLog4j) {
            log4J.info(msg);
        }
        if (LoggerFactory.isUseMaxConsole) {
            if (name == null) {
                ZsMax.logInfo(msg);
            } else {
                ZsMax.logInfo(name, msg);
            }
        }
    }

    public void error(String msg) {
        if (LoggerFactory.isUseLog4j) {
            log4J.error(msg);
        }
        if (LoggerFactory.isUseMaxConsole) {
            if (name == null) {
                ZsMax.logError(msg);
            } else {
                ZsMax.logError(name, msg);
            }
        }
    }

    @Override
    public void error(String msg, Exception e) {
        if (LoggerFactory.isUseLog4j) {
            log4J.error(msg, e);
        }
        if (LoggerFactory.isUseMaxConsole) {
            error(msg + EXCEPTION_MSG + e.getMessage());
            StackTraceElement[] stackTraceElements = e.getStackTrace();
            if (stackTraceElements == null) {
                return;
            }
            for (StackTraceElement element : stackTraceElements) {
                error(EXCEPTION + element.toString());
            }
        }
    }

    public void warn(String msg) {
        if (logLevel == LogLevel.ERROR) {
            return;
        }
        if (LoggerFactory.isUseLog4j) {
            log4J.warn(msg);
        }
        if (LoggerFactory.isUseMaxConsole) {
            info(WARN + msg);
        }
    }

    @Override
    public void debug(String msg) {
        if (logLevel == LogLevel.INFO || logLevel == LogLevel.WARN || logLevel == LogLevel.ERROR) {
            return;
        }
        if (LoggerFactory.isUseLog4j) {
            log4J.debug(msg);
        }
        if (LoggerFactory.isUseMaxConsole) {
            info(DEBUG + msg);
        }
    }
}
