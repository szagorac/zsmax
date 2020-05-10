import com.cycling74.max.Atom;
import com.cycling74.max.Callback;
import com.cycling74.max.Executable;
import com.cycling74.max.MaxClock;
import com.cycling74.max.MaxObject;
import com.cycling74.max.MaxQelem;
import com.cycling74.max.MaxSystem;

import static com.cycling74.max.MaxSystem.scheduleDelay;

public class learn extends MaxObject {
    private static final double PI_OVER_180 = Math.PI / 180.0;
    private static final double A180_OVER_PI = 180.0 / Math.PI;

    //exposed attribute
    private int repeat;
    private double angle;

    //Internal clock executable
    private MaxClock c;
    //  Single element queue to execute on low priority thread
    private MaxQelem q;

    //Executable that can be scheduled
    Executable e = new Executable() {
        public void execute() {
            outletBang(0); //send a bang out the first outlet
        }
    };

    public learn() {
        post("ZsMax initialised");
    }

    public void init() {
//        two inputs and outputs
//        declareInlets(new int[]{ DataTypes.ALL, DataTypes.ALL});
//        declareOutlets(new int[]{ DataTypes.ALL, DataTypes.ALL});

//        shortcut to declare inlet/outlet
//        declareIO(3,2);

//        suppress info outlet
//        createInfoOutlet(false);

        // no inlets/outlets
//        declareInlets(NO_INLETS);
//        declareOutlets(NO_OUTLETS);

        // inlet/outlet doc
//        setInletAssist(new String[] { "bang to output", "bang to reset"});
//        setOutletAssist(new String[] { "calc result 1", "calc result 2"});

        //define an attribute / bean param
        declareAttribute("repeat"); //make repeat an attribute
        declareAttribute("angle", "getangle", "setangle");
        //getter only
        declareAttribute("coord", "getcoord", null);

        // Scheduled callback handler
        c = new MaxClock(new Callback(this, "dobang"));

        q = new MaxQelem(new Callback(this, "fillarray"));
    }

    // ATTRIBUTES
    // have default getter/setter automatically equivalent to:
//    public void repeat(int val) {
//        repeat = val;
//    }
//    public void getrepeat() {
//        int info_idx = getInfoIdx();
//        if (info_idx == -1)
//            post("repeat " + repeat);
//        else
//            outlet(info_idx, repeat);
//    }
//    custom attribute getter/setter
    private void setangle(double angle) {
        angle = angle * PI_OVER_180; //convert degrees to radians
    }

    private double getangle() {
        return angle * A180_OVER_PI; //convert radians to degrees
    }

    private final int[] coord_ret = new int[2];

    private int[] getcoord() {
        coord_ret[0] = 12;
        coord_ret[1] = 14;
        return coord_ret;
    }

    // MESSAGES = public methods
    // all public methods are exposed as named messages sent to obj
    public void stop() {
        post("I received the stop message.");
    }

    //    message with args
    public void resize(Atom[] newsize) {
        Atom a;
        if (newsize.length >= 1) {
            a = newsize[0];
            if (a.isInt()) {
                //            _do_resize(a.getInt());
            } else if (a.isFloat()) {
                //            _do_resize((int)a.getFloat());
            } else {
                post("resize message does not understand the string argument " + a.getString());
            }
        }
    }

    // can also use automated cast for message args
    public void resize(int newsize) {
//        _do_resize(newsize);
    }

    // catch all message handler
    public void anything(String msg, Atom[] args) {
        post("I received a " + msg + " message.");
        if (args.length > 0) {
            post("It has the following arguments:");
            for (Atom arg : args) {
                post(arg.toString());
            }
        }
    }


    // inlet handlers
    public void inlet(int i) {
        int inlet_no;
        inlet_no = getInlet();
        post("I got an integer in inlet " + inlet_no);

        // sets MaxQelem executable on low priority thread
        q.set();
    }

    public void inlet(float f) {
        int inlet_no;
        inlet_no = getInlet();
        post("I got a floating point number in inlet " + inlet_no);
    }

    public void list(Atom[] args) {
        post("Received list message at inlet " + getInlet()); //loop through all the atoms in the list
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

    //    outlet handlers
    public void bang() {
        outlet(0, "ZsMax received bang");
//        outletBang(0);
//        int a = 42;
//        int b = 38;
//        float c = 0.005F;
//        send atom list on 2 outlet
//        outlet(1,new Atom[]{Atom.newAtom(a),Atom.newAtom(b),
//                Atom.newAtom(c)});

// #############   SCHEDULE EXECUTABLE   ###################
        //Schedule execution on high priority thread
        outletHigh(0, 0);
        // equivalent to:
        scheduleDelay(e, 0);

        // Defer executable to a low priority thread, puts task in the FRONT of the queue (ordering could be reversed!!)
        MaxSystem.defer(e);

        // Defer executable to a low priority thread, puts task in the BACK of the queue, ordering preserved
        MaxSystem.deferLow(e);

        //Scheduling executable on a high priority thread
        scheduleDelay(e, 2000);
    }

    //    to respond to dump message on info outlet
    public void dump() {
        //_frequency, _load, and _stepsize are private member // variables of this class
//        int info_idx = getInfoIdx();
//        outlet(info_idx, new Atom[]{Atom.newAtom("frequency"),
//                Atom.newAtom(_frequency)); outlet(info_idx, new Atom[]{Atom.newAtom("load"),
//            Atom.newAtom(_load)}); outlet(info_idx, new Atom[]{Atom.newAtom("stepsize"),
    }


    // clock executable
    private void dobang() {
        outletBang(0);//outlet a bang out of the first outlet
        c.delay(500.0);//set the clock to execute again in 500 ms
    }

    public void stopClock() {
        c.unset(); //stop the clock from executing
    }

    // DESTRUCTOR
    //notifyDeleted is called by the Max application
    // when the user deletes your external from a Max patch
    // or closes a Max patch of which your Java extern is a member.
    public void notifyDeleted() {
        c.release();
        //release native resources which
        //Max associates with the MaxClock object //this is extremely important. Otherwise //these resources would be unable to be //reclaimed

        // release any MaxQelem executables
        q.release();
    }

    // MaxQelem
    // expensive task to be executed on low priority thread by setting it on MaxQelem
    private void fillarray() {
        double thisParameter = 1.0;
        double[] darray = new double[10000000];//10 million element array
        for (int i = 0; i < darray.length; i++) {
            darray[i] = Math.sin(System.currentTimeMillis() + thisParameter);
        }
    }

}
