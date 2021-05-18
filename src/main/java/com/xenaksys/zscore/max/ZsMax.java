package com.xenaksys.zscore.max;

import com.cycling74.max.Atom;
import com.cycling74.max.MaxObject;

public abstract class ZsMax extends MaxObject {

    protected static boolean isLive = true;

    public static void logInfo(String msg) {
        if (isLive) {
            post(msg);
        }
    }

    public static void logInfo(String source, String msg) {
        if (isLive) {
            post(source + ": " + msg);
        }
    }

    public static void logError(String msg) {
        if (isLive) {
            error(msg);
        }
    }

    public static void logError(String source, String msg) {
        if (isLive) {
            error(source + ": " + msg);
        }
    }

    public static void logToErrorDialog(String msg) {
        if (isLive) {
            ouch(msg);
        }
    }

    public static void logToErrorDialog(String source, String msg) {
        if (isLive) {
            ouch(source + ": " + msg);
        }
    }

    protected float parseFloatValue(Atom inValue) {
        float returnValue = 0f;

        if (inValue.isFloat()) {
            returnValue = inValue.getFloat();
        } else if (inValue.isInt()) {
            returnValue = (float) inValue.getInt();
        } else if (inValue.isString()) {
            try {
                returnValue = Float.valueOf(inValue.getString());
            } catch (Exception e) {
                logInfo("Could not convert string " + inValue + " to float");
            }
        } else {
            error("Received unexpected input value " + inValue);
        }

        return returnValue;
    }

    protected long parseLongValue(Atom inValue) {
        long returnValue = 0l;

        if (inValue.isFloat()) {
            returnValue = (long) inValue.getFloat();
        } else if (inValue.isInt()) {
            returnValue = inValue.getInt();
        } else if (inValue.isString()) {
            try {
                returnValue = Long.valueOf(inValue.getString());
            } catch (Exception e) {
                logInfo("Could not convert string " + inValue + " to long");
            }
        } else {
            error("Received unexpected input value " + inValue);
        }

        return returnValue;
    }

    protected int parseIntValue(Atom inValue) {
        int returnValue = 0;

        if (inValue.isFloat()) {
            returnValue = (int) inValue.getFloat();
        } else if (inValue.isInt()) {
            returnValue = inValue.getInt();
        } else if (inValue.isString()) {
            try {
                returnValue = Integer.valueOf(inValue.getString());
            } catch (Exception e) {
                logInfo("Could not convert string " + inValue + " to int");
            }
        } else {
            error("Received unexpected input value " + inValue);
        }

        return returnValue;
    }

    public static void setIsLive(boolean live) {
        isLive = live;
    }

    protected void notifyDeleted() {
        destroy();
    }

    public void clear() {
        logInfo("Received the -- clear -- message. Releasing memory.");
        onClear();
    }

    protected abstract void destroy();

    protected abstract void onClear();

}
