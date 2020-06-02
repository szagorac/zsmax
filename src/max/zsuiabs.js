// XY coordinate for relative_coords = 0
// (0, 0) the top-left


autowatch = 1;

inlets = 1;
outlets = 1;

mgraphics.init();
mgraphics.relative_coords = 0;
mgraphics.autofill = 0;

var SERVER_LABEL = "Server:";
var FONT = "Helvetica";
var FONT_SIZE_SERVER_NAME = 14;
var MARGIN = 20;
var COL_WHITE_TRANSPARENT = [1.0,1.0,1.0,0.0];
var COL_RED = [1.0,0.0,0.0,1.0];
var COL_GREEN = [0.0,1.0,0.0,1.0];
var COL_BLACK = [0.0,0.0,0.0,1.0];

var aspect = 0;
var leftX = 0;
var topY = 0;
var rightX = 0;
var bottomY = 0;
var width = 0;
var height = 0;

var circleNo = 4;
var semaphoreState = [];
var stateCol = [];
var stateValue = "Inactive";
var serverHost = "";


init();

function init() {
	aspect = calcAspect();
	for (i=0; i<circleNo; i++) {
		semaphoreState[i] = 0;
		stateCol[i] = COL_WHITE_TRANSPARENT;
	}
	mgraphics.redraw();
}

function paint() {
	drawServerLabel(); 
}

function drawServerLabel() {
	calcAspect();
	setColour(COL_BLACK);
	mgraphics.select_font_face(FONT);
	mgraphics.set_font_size(FONT_SIZE_SERVER_NAME);

	var ts = mgraphics.text_measure(SERVER_LABEL);
	var txtWidth = ts[0];
	var txtHeigth = ts[1];
	
	
	var x = MARGIN;
	var y = MARGIN + txtHeigth;
	log("x: " + x + " y: " + y + " leftX: " + leftX + " topY: " + topY);

	mgraphics.move_to(x, y);
	mgraphics.text_path(SERVER_LABEL);
	mgraphics.fill();
}

function setColour(colour) {
	mgraphics.set_source_rgba(colour[0], colour[1], colour[2], colour[3]);
}

function recalc() {
	aspect = calcAspect();
}

// bang -- draw and refresh display
function bang() {
	recalc();
	mgraphics.redraw();
}

function clear() {
	bang(); // draw and refresh display
}

function calcAspect() {
	leftX = box.rect[0];
	topY = box.rect[1];
	rightX = box.rect[2];
	bottomY = box.rect[3];

	width = rightX - leftX;
	height = bottomY - topY;
	return width / height;
}

function log(val) {
	post(val);
	post();
}

function onresize(w, h) {
	bang(); // draw and refresh display
}
onresize.local = 1; // make function private to prevent triggering from Max


function onclick(x, y) {
	bang(); // draw and refresh display
}
onclick.local = 1; // make function private to prevent triggering from Max

// ondblclick -- pass buck to onclick()
function ondblclick(x, y) {
	onclick(x, y);
}
ondblclick.local = 1; // make function private to prevent triggering from Max