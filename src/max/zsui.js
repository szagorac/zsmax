// XY coordinate for relative_coords = 1
// (-1.0 * aspect,  1.0)  the top-left
// (1.0 * aspect,   1.0)   the top-right
// (-1.0 * aspect, -1.0) the bottom-left
// (1.0 * aspect,  -1.0)  the bottom-right


autowatch = 1;

inlets = 1;
outlets = 1;

mgraphics.init();
mgraphics.relative_coords = 1;
mgraphics.autofill = 0;

var SERVER_LABEL = "Server:";
var FONT = "Helvetica";
var FONT_SIZE_SERVER_NAME = 14;
var MARGIN = 0.1;
var COL_WHITE_TRANSPARENT = [1.0,1.0,1.0,0.0];
var COL_RED = [1.0,0.0,0.0,1.0];
var COL_GREEN = [0.0,1.0,0.0,1.0];
var COL_BLACK = [0.0,0.0,0.0,1.0];

var aspect = 0;
var trX = 0;
var trY = 0;
var blX = 0;
var blY = 0;
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
}

function paint() {
	drawServerLabel(); 
}

function drawServerLabel() {
	setColour(COL_BLACK);
	mgraphics.select_font_face(FONT);
	mgraphics.set_font_size(FONT_SIZE_SERVER_NAME);

	var ts = mgraphics.text_measure(SERVER_LABEL);
	var txtWidth = ts[0];
	var txtHeigth = ts[1];
	
	var convertedTxtHeight = convertPixelsHeight(txtHeigth);
	
	var x = -1.0*aspect + MARGIN;
	var y = 1.0 - MARGIN - convertedTxtHeight;
	log("x: " + x + " y: " + y);

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
	var width = box.rect[2] - box.rect[0];
	var height = box.rect[3] - box.rect[1];
	return width / height;
}

function convertPixelsWidth(pixelVal) {
	var width = box.rect[2] - box.rect[0];
	var out = pixelVal/width;
	return out;
}

function convertPixelsHeight(pixelVal) {
	var height = box.rect[3] - box.rect[1];
	var out = pixelVal/height;
	return out;
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