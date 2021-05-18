/*
 * Copyright (C) 2003-2014, C. Ramakrishnan / Auracle.
 * All rights reserved.
 *
 * This code is licensed under the BSD 3-Clause license.
 * See file LICENSE (or LICENSE.html) for more information.
 */

package com.xenaksys.zscore.net.osc.utility;

import com.xenaksys.zscore.net.osc.AddressSelector;
import com.xenaksys.zscore.net.osc.OSCBundle;
import com.xenaksys.zscore.net.osc.OSCListener;
import com.xenaksys.zscore.net.osc.OSCMessage;
import com.xenaksys.zscore.net.osc.OSCPacket;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

/**
 * Dispatches {@link OSCPacket}s to registered listeners (<i>Method</i>s).
 *
 * @author Chandrasekhar Ramakrishnan
 */
public class OSCPacketDispatcher {

    protected final Map<AddressSelector, OSCListener> selectorToListener;

    public OSCPacketDispatcher() {
        this.selectorToListener = new HashMap<AddressSelector, OSCListener>();
    }

    /**
     * Adds a listener (<i>Method</i> in OSC speak) that will be notified
     * of incoming messages that match the selector.
     *
     * @param addressSelector selects which messages will be forwarded to the listener,
     *                        depending on the message address
     * @param listener        receives messages accepted by the selector
     */
    public void addListener(AddressSelector addressSelector, OSCListener listener) {
        selectorToListener.put(addressSelector, listener);
    }

    public void dispatchPacket(OSCPacket packet) {
        dispatchPacket(packet, null);
    }

    public void dispatchPacket(OSCPacket packet, Date timestamp) {
        if (packet instanceof OSCBundle) {
            dispatchBundle((OSCBundle) packet);
        } else {
            dispatchMessage((OSCMessage) packet, timestamp);
        }
    }

    protected void dispatchBundle(OSCBundle bundle) {
        final Date timestamp = bundle.getTimestamp();
        final List<OSCPacket> packets = bundle.getPackets();
        for (final OSCPacket packet : packets) {
            dispatchPacket(packet, timestamp);
        }
    }

    protected void dispatchMessage(OSCMessage message, Date time) {
        for (final Entry<AddressSelector, OSCListener> addrList : selectorToListener.entrySet()) {
            if (addrList.getKey().matches(message.getAddress())) {
                addrList.getValue().acceptMessage(time, message);
            }
        }
    }
}
