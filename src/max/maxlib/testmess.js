var mobj = this.patcher.getnamed ("testcoll");
var mobj2 = this.patcher.getnamed ("mytext");
function test()
{
     if(mobj == null) {
         post("mobj not found");
     } else {
        mobj.message(3, "yet_other_data");
        mobj.message("store", "C", "yet_some_more_data");
     }
}
function mess()
{
     var a = arrayfromargs(arguments);
     if(mobj == null) {
         post("mobj not found");
     } else {
         post("sending "+a+"n");
        mobj.message(a);
     }
}
function read()
{
     if(mobj2 == null) {
         post("mobj not found");
     } else {
        mobj2.message("read", "readme.rtf");
     }
}