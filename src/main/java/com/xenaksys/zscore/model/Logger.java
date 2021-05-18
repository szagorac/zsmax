package com.xenaksys.zscore.model;

public interface Logger {
    void info(String msg);

    void error(String msg);

    void error(String msg, Exception e);

    void warn(String msg);

    void debug(String msg);
}
