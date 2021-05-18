package com.xenaksys.zscore.util;

import org.junit.Test;

import static org.junit.Assert.assertTrue;

public class TestParseUtil {
    @Test
    public void testParse() {
        String v = "123";
        Object out = ParseUtil.convertToType(v);
        assertTrue(out instanceof Integer);

        v = "-123";
        out = ParseUtil.convertToType(v);
        assertTrue(out instanceof Integer);

        v = "2147483646";
        out = ParseUtil.convertToType(v);
        assertTrue(out instanceof Integer);

        v = "2147483649";
        out = ParseUtil.convertToType(v);
        assertTrue(out instanceof Long);

        v = "-2147483649";
        out = ParseUtil.convertToType(v);
        assertTrue(out instanceof Long);

        v = "123.4";
        out = ParseUtil.convertToType(v);
        assertTrue(out instanceof Double);

        v = "123234234.4234234";
        out = ParseUtil.convertToType(v);
        assertTrue(out instanceof Double);

        v = "123asdad.4234234";
        out = ParseUtil.convertToType(v);
        assertTrue(out instanceof String);

        v = "true";
        out = ParseUtil.convertToType(v);
        assertTrue(out instanceof Boolean);

        v = "false";
        out = ParseUtil.convertToType(v);
        assertTrue(out instanceof Boolean);

        v = "truesome";
        out = ParseUtil.convertToType(v);
        assertTrue(out instanceof String);
    }

}
