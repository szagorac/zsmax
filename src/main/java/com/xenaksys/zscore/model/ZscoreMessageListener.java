package com.xenaksys.zscore.model;

import com.cycling74.max.Atom;

public interface ZscoreMessageListener {

    void onMessage(String msg);

    void onMessage(String msg, Atom[] args);

}
