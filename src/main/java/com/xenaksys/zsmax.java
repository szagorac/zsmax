package com.xenaksys;

import com.cycling74.max.MaxObject;

public class zsmax extends MaxObject {

    public zsmax() {
        post("ZsMax initialised");
    }

    public void bang() {
        outlet(0, "ZsMax received bang");
    }
}
