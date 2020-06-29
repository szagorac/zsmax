autowatch = 1;

var isPlaying = false;
var grobj = null;

function bang() {    
    if (grobj == null) {
        grobj = this.patcher.getnamed("zsgr");
    }
    
    if (grobj == null) {
        post("grobj not found");
        return;
    } 

    var grsub = grobj.subpatcher();
    if (grsub == null) {
        post("grsub not found");
        return;
    }
    
    var grplay = grsub.getnamed("zsgrplay");
    if (grplay == null) {
        post("grplay not found");
        return;
    }

    if(isPlaying) {
        grplay.message("int", 0);
        isPlaying = false;
    } else {
        grplay.message("int", 1);
        isPlaying = true;
    }

}