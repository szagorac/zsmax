import com.cycling74.max.Atom;
import com.cycling74.max.DataTypes;
import com.cycling74.max.MaxObject;
import com.xenaksys.zscore.client.ZscoreClient;
import com.xenaksys.zscore.model.ZscoreMessageListener;

import static com.xenaksys.zscore.Consts.DEFAULT_INSTRUMENT;

public class zscore extends MaxObject implements ZscoreMessageListener {

    private String instrument;
    private ZscoreClient zscoreClient;

    public zscore() {
        this(DEFAULT_INSTRUMENT);
    }

    public zscore(String instrumentName) {
        this.instrument = instrumentName;
        init();
        post("zscore initialised for instrument: " + instrumentName);
    }

    public void init() {
        String id = ZscoreClient.createClientId(instrument);
        zscoreClient = new ZscoreClient(id);
        zscoreClient.subscribe(this);
        zscoreClient.start();
        declareInlets(new int[]{DataTypes.LIST});
        declareOutlets(new int[]{DataTypes.MESSAGE});
    }

    public void list(Atom[] args) {
        post("Received list message at inlet " + getInlet());
        Atom a;
        for (int i = 0; i < args.length; i++) {
            a = args[i];
            if (a.isFloat())
                post("List element " + i + " is a floating point atom with a value of " + a.getFloat());
            else if (a.isInt())
                post("List element " + i + " is an integer atom with a value of " + a.getInt());
            else if (a.isString())
                post("List element " + i + " is a String atom with a value of " + a.getString());
        }
    }

    // catch all message handler
    public void anything(String msg, Atom[] args) {
        post("Received unknown " + msg + " message.");
        if (args.length > 0) {
            post("With following arguments:");
            for (Atom arg : args) {
                post(arg.toString());
            }
        }
    }

    public void bang() {
        outlet(0, "zscore received bang");
    }

    @Override
    public void onMessage(String msg) {
        outletHigh(0, msg);
    }

    @Override
    public void onMessage(String msg, Atom[] args) {
        outletHigh(0, msg, args);
    }
}
