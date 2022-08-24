autowatch = 1;

inlets = 1;
outlets = 2;

function msg_int(val) {

    if(arguments.length != 1) {
        post("Invalid numner of arguments");
        return;
    }

    var v = arguments[0];
    if(v == 0) {
        outlet(0, 0);
        outlet(1, "active 0");
    } else {
        outlet(0, 1);
        outlet(1, "active 1");
    }

}