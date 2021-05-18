package com.xenaksys.zscore;

import com.xenaksys.zscore.client.ZscoreClient;

public class TestServerConnectivity {

    private ZscoreClient client;

    public void test(ZscoreClient client) {
        this.client = client;
        init();
    }

    public void init() {
        client.start();
    }

    public static void main(String[] args) {
        TestServerConnectivity t = new TestServerConnectivity();
        String id = ZscoreClient.createClientId("test");
        t.test(new ZscoreClient(id));
    }
}
