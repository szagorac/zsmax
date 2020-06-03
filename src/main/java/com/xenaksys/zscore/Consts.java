package com.xenaksys.zscore;


public interface Consts {

    String EMPTY = "";
    String SPACE = " ";
    String COMMA = ",";
    String SLASH = "/";
    String COLUMN = ":";
    String OPEN_BRACKET = "(";
    String CLOSE_BRACKET = ")";
    String SINGLE_QUOTE = "'";
    String INSCORE_ADDR = "INScore";
    String ZSCORE_ADDR = "/SZCORE";
    String OSC_INSCORE_ADDRESS_ROOT = "/ITL";
    String OSC_INSCORE_ADDRESS_SCENE = OSC_INSCORE_ADDRESS_ROOT + "/scene";
    String OSC_INSCORE_JS = OSC_INSCORE_ADDRESS_SCENE + "/javascript";
    String ERR_ADDR = "error:";

    String ARG_HELLO = "HELLO";
    String ARG_INSCORE_HELLO = "hello";
    String ARG_PING = "PING";
    String ARG_SET_INSTRUMENT = "SET_INSTRUMENT";

    String OSC_ADDRESS_SCORE_JAVASCRIPT = "/ITL/scene/javascript";

    String PROP_LOG_USE_LOG4J = "zscore.log.isUseLog4j";
    String PROP_LOG_USE_MAX_CONSOLE = "zscore.log.isUseMaxConsole";

    int MILLIS_IN_MINUTE = 1000 * 60;

    String DEFAULT_OSC_PORT_NAME = "DEFAULT_OSC_PORT";

    String ALL_DESTINATIONS = "ALL";
    String BROADCAST = "BROADCAST";

    int DEFAULT_OSC_CLIENT_PORT = 6666;
    int DEFAULT_OSC_CLIENT_OUT_PORT = 6667;
    int DEFAULT_OSC_SERVER_PORT = 7777;
    int DEFAULT_ALL_PORTS = Integer.MIN_VALUE;

    String DEFAULT_INSTRUMENT = "AV";

    String JS_INSCORE_CMD_RUN = "run";
    String JS_CMD_SET_SERVER_ID = "setServerIp";
    String JS_CMD_PING = "ping";
    String JS_CMD_SERVER_HELLO = "serverHello";
    String JS_CMD_SET_INSTRUMENTS = "setInstruments";

    String MAX_MSG_SERVER_HOST = "serverHost";
    String MAX_MSG_SERVER_IP = "serverIp";
    String MAX_MSG_IS_CONNECTED = "connected";

    Boolean MAX_VAL_TRUE = true;

    String MAX_MSG_VAL_TRUE = " true";
    String MAX_MSG_VAL_FALSE = " false";

    String ADDR_TOKEN = "$ADDR";
    String OSC_JS_ACTIVATE = "activate(" + ADDR_TOKEN + ")";
    String OSC_JS_DEACTIVATE = "deactivate(" + ADDR_TOKEN + ")";

    String INET_ADDR_TOKEN = "$INET_ADDR";
    String OSC_JS_SERVER_HELLO = "serverHello('" + INET_ADDR_TOKEN + "')";

    String SEND_TIME = "$SEND_TIME";
    String OSC_JS_PING_CMD = "ping";
    String OSC_JS_PING = OSC_JS_PING_CMD + "('" + SEND_TIME + "')";

    String TITLE_TOKEN = "$TITLE";
    String OSC_JS_SET_TITLE = "setTitle('" + TITLE_TOKEN + "')";

    String STAVE_NO = "$STAVE_NO";
    String BEAT_NO = "$BEAT_NO";
    String OSC_JS_SET_DATE = "setDate(" + STAVE_NO + "," + BEAT_NO + ")";

    String TEMPO = "$TEMPO";
    String OSC_JS_SET_TEMPO = "setTempo(" + TEMPO + ")";

    String OSC_JS_STOP = "stop()";

    String PART_TOKEN = "$PART";
    String OSC_JS_SET_PART = "setPart('" + PART_TOKEN + "')";

    String CSV_INSTRUMENTS_TOKEN = "$INSTRUMENT";
    String OSC_JS_SET_INSTRUMENTS = "setInstruments('" + CSV_INSTRUMENTS_TOKEN + "')";

    String SERVER_IP__TOKEN = "$SERVER_IP";
    String OSC_JS_SET_SERVER_IP = "setServerIp('" + SERVER_IP__TOKEN + "')";

    String BEAT_TOKEN = "$BEAT";
    String COLOUR_TOKEN = "$COLOUR";
    String OSC_JS_BEATER_ON = "beatersOn(" + BEAT_TOKEN + "," + COLOUR_TOKEN + ")";
    String OSC_JS_BEATER_OFF = "beatersOff(" + BEAT_TOKEN + ")";

    String ALPHA_VALUE_TOKEN = "$ALPHA_VALUE";
    String OSC_JS_SET_ALPHA = "setAlpha('" + ADDR_TOKEN + "'," + ALPHA_VALUE_TOKEN + ")";

    String OSC_JS_RESET_SCORE = "resetScore()";
    String OSC_JS_RESET_STAVES = "resetStaves()";
    String OSC_JS_RESET_INSTRUMENT = "resetInstrument()";

    String RUN = "run";
    String HELLO = "HELLO";
    String SET_INSTRUMENT = "SET_INSTRUMENT";

    String NAME_NA = "N/A";

    int DEFAULT_THREAD_SLEEP_MILLIS = 10;

    String DISRUPTOR_THREAD_FACTORY = "SZCore_Dsrptr";
    String DISRUPTOR_OSC_OUT_THREAD_FACTORY = "SZCore_OSC_Out_Dsrptr";
    String DISRUPTOR_WEB_OUT_THREAD_FACTORY = "SZCore_Web_Out_Dsrptr";
    String DISRUPTOR_IN_THREAD_FACTORY = "SZCore_In_Dsrptr";
    String DISRUPTOR_CONTAINER_IN_THREAD_FACTORY = "SZCore_Container_In_Dsrptr";
    String SCHEDULER_THREAD_FACTORY = "SZCore_Schedlr";
    String DEFAULT_THREAD_SUFFIX = "-Thread-";

}
