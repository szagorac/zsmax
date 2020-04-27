package com.xenaksys;

import com.cycling74.max.MaxObject;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class TestMaxCompile extends MaxObject {

    @Test
    public void testName() {
        String name = getName();
        assertEquals("com.xenaksys.TestMaxCompile", name);
    }
}
