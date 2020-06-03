package com.xenaksys.zscore.client;

import com.xenaksys.zscore.max.LoggerFactory;
import com.xenaksys.zscore.model.Logger;
import com.xenaksys.zscore.util.NetUtil;

import java.io.IOException;
import java.io.InputStream;
import java.net.InetAddress;
import java.util.Properties;

public abstract class Client {
    static final Logger LOG = LoggerFactory.getLogger(Client.class);

    private static final String PROP_LOCATION = "location";
    private static final String PROP_INSTANCE = "instance";

    protected static volatile Properties properties = loadProperties();

    protected static volatile String location = loadLocation();
    protected static volatile int instanceId = loadInstanceId();

    private final String id;
    protected String name;
    protected volatile boolean isStop;
    protected volatile boolean isStarted;
    protected InetAddress clientAddress;
    protected String clientHost;

    protected Client(String id) {
        this.id = id;
        setName(id);
    }

    public static String getLocation() {
        if (location != null && location.length() > 0) {
            return location;
        }
        return null;
    }

    public static int getInstanceId() {
        return instanceId;
    }


    protected void configureInternal() throws Exception {

        clientAddress = NetUtil.getHostAddress();
        clientHost = clientAddress.getHostAddress();

        configure();
    }

    protected abstract void configure() throws Exception;

    private void startInternal() throws Exception {
        LOG.info("Starting in Location: " + getLocation() + " instance id: " + getInstanceId());
        onStart();
        isStarted = true;
    }

    protected abstract void onStart() throws Exception;

    public static Properties getProperties() {
        if (properties == null) {
            loadProperties();
        }
        return properties;
    }

    public static String getSystemProperty(String key, String defaultValue) {
        final String value = System.getProperty(key);
        if (value == null) {
            return defaultValue;
        }
        return value;
    }

    public void stop() {
        if (isStop) {
            return;
        }
        logInfo("Stopping " + getName() + " ... ");
        this.isStop = true;
    }

    public void start() {
        try {
            configureInternal();
            startInternal();
        } catch (Exception e) {
            LOG.error("Failed to start", e);
        }
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void logInfo(String log) {
        LOG.info(getName() + ": " + log);
    }

    public void logError(String log) {
        LOG.error(getName() + ": " + log);
    }


    public String getId() {
        return id;
    }

    public boolean isRunning() {
        return isStarted;
    }

    protected static String loadLocation() {
        printProperties();
        String loc = System.getProperty(PROP_LOCATION);
        if (loc == null) {
            loc = "LOCAL";
        }
        return loc;
    }

    protected static int loadInstanceId() {
        String instanceStr = System.getProperty(PROP_INSTANCE);
        int instanceID = 1;

        try {
            if (instanceStr != null) {
                instanceID = Integer.valueOf(instanceStr);
            }
        } catch (NumberFormatException e) {
            LOG.error("Failed to parse instance ID, using default instance 1");
            instanceID = 1;
        }

        return instanceID;
    }

    protected static void printProperties() {
        Properties properties = System.getProperties();
        LOG.info("##### System Properties: ");
        for (String name : properties.stringPropertyNames()) {
            LOG.info("name: '" + name + "' value: '" + properties.getProperty(name) + "'");
        }
        LOG.info("##### End System Properties");
    }

    protected static Properties loadProperties() {
        Properties props = new Properties();
        try {
            String propFileName = System.getProperty("propertyFile");
            if (propFileName == null) {
                propFileName = "zscore.properties";
            }

            InputStream inputStream = Client.class.getClassLoader().getResourceAsStream(propFileName);
            if (inputStream == null) {
                return new Properties();
            }

            props.load(inputStream);

            return props;
        } catch (IOException e) {
            LOG.error("Failed to load Properties file: " + e);
        }
        return props;
    }
}
