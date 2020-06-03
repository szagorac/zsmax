package com.xenaksys.zscore.util;

import com.cycling74.max.Atom;
import com.xenaksys.zscore.max.LoggerFactory;
import com.xenaksys.zscore.model.Logger;

public class MaxUtil {
    static final Logger LOG = LoggerFactory.getLogger(MaxUtil.class);

    public static Atom[] createAtomArgs(Object... args) {
        int len = args.length;
        Atom[] atoms = new Atom[len];

        for (int i = 0; i < len; ++i) {
            Object arg = args[i];
            if (arg instanceof Integer) {
                atoms[i] = Atom.newAtom((Integer) arg);
            } else if (arg instanceof Long) {
                atoms[i] = Atom.newAtom((Long) arg);
            } else if (arg instanceof Double) {
                atoms[i] = Atom.newAtom((Double) arg);
            } else if (arg instanceof String) {
                atoms[i] = Atom.newAtom((String) arg);
            } else if (arg instanceof Boolean) {
                atoms[i] = Atom.newAtom((Boolean) arg);
            } else {
                LOG.error("Invalid MAX argument type: " + arg);
                if (arg != null) {
                    atoms[i] = Atom.newAtom(arg.toString());
                } else {
                    atoms[i] = Atom.newAtom("null");
                }
            }
        }

        return atoms;
    }
}
