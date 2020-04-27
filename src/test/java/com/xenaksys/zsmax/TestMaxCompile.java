package com.xenaksys.zsmax;

import com.cycling74.max.MaxObject;
import com.cycling74.max.MaxSystem;

public class TestMaxCompile extends MaxObject {

    public void logError(String message) {
        MaxSystem.error(message);
    }
}
