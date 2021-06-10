package com.xenaksys.zscore.model;

import com.cycling74.max.Atom;

public interface ZscoreMessageListener {

    void onMessage(String msg);

    void onMessage(String msg, Atom[] args);

    void onMessage(int outIdx, String msg, boolean isHighPriority);

    void onMessage(int outIdx, Atom[] args, boolean isHighPriority);

    void onMessage(int outIdx, String msg, Atom[] args, boolean isHighPriority);

}
