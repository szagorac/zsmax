// XY coordinate for relative_coords = 0
// (0, 0) the top-left

autowatch = 1;

inlets = 1;
outlets = 1;

mgraphics.init();
mgraphics.relative_coords = 0;
mgraphics.autofill = 0;

var zs = (function (g, m) {

	var conf = {
		ZSCORE_LABEL: "ZScore",
		SERVER_LABEL: "Server:",
		FONT_VERDANA: "Verdana",
		FONT_HELVETICA: "Helvetica",
		FONT_SIZE_SERVER_NAME: 14,
		FONT_SIZE_ZSCORE_NAME: 20,
		MARGIN: 10,
		RECT_RADIUS: 10,
		COL_WHITE_TRANSPARENT: [1.0, 1.0, 1.0, 0.0],
		COL_RED: [1.0, 0.0, 0.0, 1.0],
		COL_GREEN: [0.0, 1.0, 0.0, 1.0],
		COL_BLACK: [0.0, 0.0, 0.0, 1.0],
		COL_BLACK_DIM: [0.0, 0.0, 0.0, 0.5],
		COL_WHITE: [1.0, 1.0, 1.0, 1.0],
		COL_PURPLE: [0.4, 0.0, 0.8, 1.0],
		COL_RED_PALE: [1.0, 0.9, 0.9, 1.0],
		STATE_INACTIVE: "Inactive",
		STATE_ACTIVE: "Active",
		STATE_UNKNOWN: "Unknown",
		STATE_CONNECTED: "Connected",
	}

	var state = {
		patchInfo: {
			aspect: 0,
			leftX: 0,
			topY: 0,
			rightX: 0,
			bottomY: 0,
			width: 0,
			height: 0,
		},
		circleNo: 4,
		semaphoreState: [],
		stateCol: [],
		connState: conf.STATE_INACTIVE,
		serverHost: conf.STATE_UNKNOWN,
	}

	function _draw() {
		_calcSize();
		_setBackground();
		_drawZscoreLabel();
		_drawServerState();
	}

	function _connected(isConnected) {
		if (isConnected === 0) {
			state.connState = conf.STATE_INACTIVE;
		} else {
			state.connState = conf.STATE_ACTIVE;
		}

		g.redraw();
	}

	function _setServerHost(host) {
		state.serverHost = host;
		g.redraw();
	}

	function _init() {
		_calcSize();
		for (i = 0; i < state.circleNo; i++) {
			state.semaphoreState[i] = 0;
			state.stateCol[i] = conf.COL_WHITE_TRANSPARENT;
		}
		g.redraw();
	}

	function _setBackground() {
		_drawRect(0, 0, state.patchInfo.width, state.patchInfo.height, conf.COL_WHITE);
	}

	function _drawZscoreLabel() {
		var x = conf.MARGIN;
		var y = conf.MARGIN + 15;
		return _drawText(conf.ZSCORE_LABEL, x, y, conf.FONT_VERDANA, conf.FONT_SIZE_ZSCORE_NAME, conf.COL_PURPLE);
	}

	function _drawServerState() {
		_drawServerLabel();
		_drawServerName();
	}

	function _drawServerLabel() {
		var x = 2 * conf.MARGIN + 80;
		var y = conf.MARGIN + 15;
		return _drawText(conf.SERVER_LABEL, x, y, conf.FONT_HELVETICA, conf.FONT_SIZE_SERVER_NAME, conf.COL_BLACK);
	}

	function _drawServerName() {
		var x = 2 * conf.MARGIN + 135;
		var y = conf.MARGIN + 15;

		var txt = state.serverHost;

		var colRect = conf.COL_GREEN;
		if (state.connState === conf.STATE_INACTIVE) {
			colRect = conf.COL_RED_PALE;
		}

		var col = conf.COL_BLACK;
		if (state.serverHost === conf.STATE_UNKNOWN) {
			col = conf.COL_BLACK_DIM;
		}

		var txtDim = _getTxtDim(txt, conf.FONT_HELVETICA, conf.FONT_SIZE_SERVER_NAME);
		var txtLen = txtDim[0];

		_drawRect(x - 5, conf.MARGIN, txtLen + 12, 20, colRect, conf.RECT_RADIUS, conf.RECT_RADIUS);
		_drawText(txt, x, y, conf.FONT_HELVETICA, conf.FONT_SIZE_SERVER_NAME, col);
	}

	function _drawRect(x, y, width, height, colour, ovalwidth, ovalheight) {
		_setColour(colour);
		if (!_isNull(ovalheight) && !_isNull(ovalwidth)) {
			g.rectangle_rounded(x, y, width, height, ovalwidth, ovalheight);
		} else {
			g.rectangle(x, y, width, height);
		}
		g.fill();
	}

	function _drawText(txt, x, y, font, size, colour) {
		_setColour(colour);
		g.select_font_face(font);
		g.set_font_size(size);
		g.move_to(x, y);
		g.text_path(txt);
		g.fill();
	}

	function _getTxtDim(txt, font, size) {
		g.select_font_face(font);
		g.set_font_size(size);
		return g.text_measure(txt);
	}

	function _setColour(colour) {
		g.set_source_rgba(colour[0], colour[1], colour[2], colour[3]);
	}

	function _calcSize() {
		var pi = state.patchInfo;
		pi.leftX = m.box.rect[0];
		pi.topY = m.box.rect[1];
		pi.rightX = m.box.rect[2];
		pi.bottomY = m.box.rect[3];

		pi.width = pi.rightX - pi.leftX;
		pi.height = pi.bottomY - pi.topY;
		pi.aspect = pi.width / pi.height;
	}

	function _log(val) {
		m.post(val);
		m.post();
	}
	function _isUndefined(val) {
		return typeof val == "undefined";
	}
	function _isNull(val) {
		return _isUndefined(val) || val === null;
	}

	// Public members if any??
	return {
		init: _init,
		draw: _draw,
		connected: function (isConnected) {
			_connected(isConnected);
		},
		setServerHost: function (host) {
			_setServerHost(host);
		},
	}

}(mgraphics, this));

zs.init();

function paint() {
	zs.draw();
}

function connected(val) {
	if (!arguments.length) {
		post("jsui received connected no args ");
		return;
	}

	var isConnected = arguments[0];
	var type = toType(isConnected);
	log("jsui received connected val: " + val + " isConnected: " + isConnected + " type: " + type);
	zs.connected(isConnected);
}

function serverHost(val) {
	if (!arguments.length) {
		post("jsui received serverHost no args ");
		return;
	}

	var host = arguments[0];
	var type = toType(host);
	log("jsui received serverHost val: " + val + " host: " + host + " type: " + type);
	zs.setServerHost(host);
}

// bang -- draw and refresh display
function bang() {
	mgraphics.redraw();
}

function clear() {
	bang(); // draw and refresh display
}

function anything(val) {
	if (!arguments.length) {
		post("jsui received anything no args ");
		return;
	}

	var len = arguments.length;
	log("jsui received anything msg: " + messagename + " arg len: " + len);
	for (var i = 0; i < len; i++) {
		var arg = arguments[i];
		var type = toType(arg);
		log("anything msg: " + messagename + " arg " + i + ": " + arg + " type: " + type);
	}
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

function toType(obj) {
	return ({}).toString.call(obj).match(/\s([a-zA-Z]+)/)[1].toLowerCase();
}
toType.local = 1;


function log(val) {
	post(val);
	post();
}
log.local = 1;

