// XY coordinate for relative_coords = 0
// (0, 0) the top-left


autowatch = 1;

inlets = 1;
outlets = 1;

mgraphics.init();
mgraphics.relative_coords = 0;
mgraphics.autofill = 0;

var ZSCORE_LABEL = "ZScore";
var SERVER_LABEL = "Server:";
var FONT_VERDANA = "Verdana";
var FONT_HELVETICA = "Helvetica";
var FONT_SIZE_SERVER_NAME = 14;
var FONT_SIZE_ZSCORE_NAME = 20;
var MARGIN = 10;
var COL_WHITE_TRANSPARENT = [1.0, 1.0, 1.0, 0.0];
var COL_RED = [1.0, 0.0, 0.0, 1.0];
var COL_GREEN = [0.0, 1.0, 0.0, 1.0];
var COL_BLACK = [0.0, 0.0, 0.0, 1.0];
var COL_BLACK_DIM = [0.0, 0.0, 0.0, 0.5];
var COL_WHITE = [1.0, 1.0, 1.0, 1.0];
var COL_PURPLE = [0.4, 0.0, 0.8, 1.0];
var STATE_INACTIVE = "Inactive";
var STATE_INACTIVE = "Active";
var STATE_DISCONNECTED = "Disconnected";

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
var stateValue = STATE_INACTIVE;
var serverHost = STATE_DISCONNECTED;


init();

function init() {
	calcSize();
	for (i = 0; i < circleNo; i++) {
		semaphoreState[i] = 0;
		stateCol[i] = COL_WHITE_TRANSPARENT;
	}
	mgraphics.redraw();
}

function paint() {
	calcSize();
	setBackground();
	drawZscoreLabel();
	drawServer();
}

function connected(val) {
	if(!arguments.length) {
		post("jsui received connected no args ");
		return;
	}  
	  
	post("jsui received connected val: " + val + " args[0]: " + arguments[0]);
	post();
}

function anything(val) {
	if(!arguments.length) {
		post("jsui received anything no args ");
		return;
	}  

	post("jsui received anything msg: " + messagename + " arg0: " + arguments[0]);
	post();
}

function setBackground() {
	setColour(COL_WHITE);
	with (mgraphics) {
		rectangle(0, 0, width, height);
		fill();
	}
}

function drawZscoreLabel() {
	var x = MARGIN;
	var y = MARGIN + 15;
	return drawTextTopLeft(ZSCORE_LABEL, x, y, FONT_VERDANA, FONT_SIZE_ZSCORE_NAME, COL_PURPLE);
}

function drawServer() {
	drawServerLabel();
	drawServerName();
}

function drawServerLabel() {
	var x = 2 * MARGIN + 80;
	var y = MARGIN + 15;
	return drawTextTopLeft(SERVER_LABEL, x, y, FONT_HELVETICA, FONT_SIZE_SERVER_NAME, COL_BLACK);
}

function drawServerName() {
	var x = 2 * MARGIN + 130;
	var y = MARGIN + 15;

	var col = COL_BLACK;
	if (serverHost === STATE_DISCONNECTED) {
		col = COL_BLACK_DIM;
	}

	return drawTextTopLeft(serverHost, x, y, FONT_HELVETICA, FONT_SIZE_SERVER_NAME, col);
}

function drawTextTopLeft(txt, x, y, font, size, colour) {
	setColour(colour);
	mgraphics.select_font_face(font);
	mgraphics.set_font_size(size);

	// var ts = mgraphics.text_measure(txt);
	// var txtWidth = ts[0];
	// var txtHeigth = ts[1];

	// y += txtHeigth;

	mgraphics.move_to(x, y);
	mgraphics.text_path(txt);
	mgraphics.fill();
}

function setColour(colour) {
	mgraphics.set_source_rgba(colour[0], colour[1], colour[2], colour[3]);
}

function recalc() {
	calcSize();
}

// bang -- draw and refresh display
function bang() {
	recalc();
	mgraphics.redraw();
}

function clear() {
	bang(); // draw and refresh display
}

function calcSize() {
	leftX = box.rect[0];
	topY = box.rect[1];
	rightX = box.rect[2];
	bottomY = box.rect[3];

	width = rightX - leftX;
	height = bottomY - topY;
	aspect = width / height;
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