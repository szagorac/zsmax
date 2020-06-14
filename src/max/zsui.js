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
		EMPTY: "",
		STRING: "string",
		ZSCORE_LABEL: "ZScore",
		SERVER_LABEL: "Server:",
		SCORE_LABEL: "Score:",
		PART_LABEL: "Part:",
		FONT_VERDANA: "Verdana",
		FONT_HELVETICA: "Helvetica",
		FONT_SIZE_NAME: 14,
		FONT_SIZE_ZSCORE_NAME: 16,
		MARGIN: 10,
		ROW1_Y: 15,
		ROW2_Y: 35,
		ROW3_Y: 55,
		RECT_RADIUS: 15,
		SEMAPHORE_RADIUS: 15,
		COL_WHITE_TRANSPARENT: [1.0, 1.0, 1.0, 0.0],
		COL_RED: [1.0, 0.0, 0.0, 1.0],
		COL_GREEN: [0.0, 1.0, 0.0, 1.0],
		COL_ORANGE: [1.0, 0.75, 0.0, 1.0],
		COL_BLACK: [0.0, 0.0, 0.0, 1.0],
		COL_BLACK_DIM: [0.0, 0.0, 0.0, 0.5],
		COL_WHITE: [1.0, 1.0, 1.0, 1.0],
		COL_PURPLE: [0.4, 0.0, 0.8, 1.0],
		COL_RED_PALE: [1.0, 0.9, 0.9, 1.0],
		STATE_INACTIVE: "Inactive",
		STATE_ACTIVE: "Active",
		STATE_UNKNOWN: "Unknown",
		STATE_CONNECTED: "Connected",
		CMD_SET_TITLE: "setTitle",
		CMD_SET_PART: "setPart",
		CMD_RESET_STAVES: "resetStaves",
		CMD_RESET_INST: "resetInstrument",
		CMD_BEATERS_ON: "beatersOn",
		CMD_BEATERS_OFF: "beatersOff",
		CMD_SET_TEMPO: "setTempo",
		CMD_STOP: "stop",
		CMD_PLAY: "play",
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
		semaphoreCol: [],
		connState: conf.STATE_INACTIVE,
		serverHost: conf.STATE_UNKNOWN,
		scoreName: conf.EMPTY,
		partName: conf.EMPTY,
		tempo: conf.EMPTY, 
	}
	function _init() {
		_resetSemaphore();
		g.redraw();
	}
	function _draw() {
		_calcSize();
		_setBackground();
		_drawZscoreLabel();
		_drawServerState();
		_drawScoreDetails(); 
		_drawSemaphore(); 
	}
	function _resetSemaphore() {
		for (i = 0; i < state.circleNo; i++) {
			state.semaphoreState[i] = 0;
			state.semaphoreCol[i] = 0;
		}
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
	function _setTitle(name) {
		state.scoreName = name;
	}
	function _setPart(name) {
		state.partName = name;
	}
	function _resetStaves() {
		_log("Reset Staves");
	}
	function _resetInstrument() {
		_resetSemaphore();
	}
	function _beatersOn(beaterNo, beaterState) {
		for (i = 0; i < beaterNo; i++) {
			state.semaphoreState[i] = beaterState;
		}
	}
	function _beatersOff(beaterNo) {
		for (i = 0; i < beaterNo; i++) {
			state.semaphoreState[i] = 0;
		}
	}
	function _setTempo(tempo) {
		state.tempo = tempo;
	}
	function _stop() {
		state.semaphoreState[0] = 4;
	}
	function _play(objName) {
		if(_isNull(objName)) {
			_log("play: invalid argument");
			return;
		}
		if(!_isString(objName)){
			_log("play: invalid argument type for: " + objName);
			return;
		}
		var obj = m.patcher.getnamed(objName);
		if(_isNull(obj)){
			_log("play: invalid obj for name: " + objName);
			return;
		}
		obj.message("bang");
	}
	
	function _processAny(messagename, args) {
		if(_isNull(messagename)) {
			return;
		}

		switch(messagename) {
			case conf.CMD_SET_TITLE:
				_setTitle(args[0]);
				break;
			case conf.CMD_SET_PART:
				_setPart(args[0]);
				break;
			case conf.CMD_RESET_STAVES:
				_resetStaves();
				break;
			case conf.CMD_RESET_INST:
				_resetInstrument();
				break;
			case conf.CMD_BEATERS_ON:
				_beatersOn(args[0], args[1]);
				break;
			case conf.CMD_BEATERS_OFF:
				_beatersOff(args[0]);
				break;
			case conf.CMD_SET_TEMPO:
				_setTempo(args[0]);
				break;
			case conf.CMD_STOP:
				_stop();
				break;
			case conf.CMD_PLAY:
				_play(args[0]);
				break;
			default:
				var len = args.length;
				log("jsui received unknown anything msg: " + messagename + " arg len: " + len);
				for (var i = 0; i < len; i++) {
					var arg = args[i];
					var type = _toType(arg);
					log("anything msg: " + messagename + " arg " + i + ": " + arg + " type: " + type);
				}
		}
		g.redraw();
	}

	function _setBackground() {
		_drawRect(0, 0, state.patchInfo.width, state.patchInfo.height, conf.COL_WHITE);
	}

	function _drawZscoreLabel() {
		// var width = state.patchInfo.width;
		// var tm = _getTxtDim(conf.ZSCORE_LABEL, conf.FONT_VERDANA, conf.FONT_SIZE_ZSCORE_NAME);
		// var tw = tm[0];
		_drawText(conf.ZSCORE_LABEL, 2 * conf.MARGIN + 80, conf.MARGIN + conf.ROW1_Y, conf.FONT_VERDANA, conf.FONT_SIZE_ZSCORE_NAME, conf.COL_PURPLE);
	}

	function _drawScoreDetails() {
		// _drawPartLabel();
		_drawPartName();
		// _drawScoreLabel();
		_drawScoreName();
		_drawSemaphore();
	}

	function _drawSemaphore() {
		for (i = 0; i < state.semaphoreState.length; i++) {
			var st = state.semaphoreState[i];
			var x = conf.MARGIN + (state.circleNo - 1 - i) * (conf.SEMAPHORE_RADIUS + 5);
			var col = conf.COL_WHITE_TRANSPARENT;

			switch(st) {
				case 1:
					col = conf.COL_GREEN;
					break;
				case 2:
					col = conf.COL_GREEN;
					break;
				case 3: 
					col = conf.COL_ORANGE;
					break;
				case 4:
					col = conf.COL_RED;	
					break;
			}

			_drawCircle(x, conf.MARGIN, conf.SEMAPHORE_RADIUS, conf.SEMAPHORE_RADIUS, col, true, true, conf.COL_BLACK, 0.5);
		}		
	}

	function _drawServerState() {
		// _drawServerLabel();
		_drawServerName();
	}

	function _drawPartLabel() {
		_drawLabel(conf.PART_LABEL, conf.MARGIN, conf.MARGIN + conf.ROW2_Y);
	}

	function _drawPartName() {
		var col = conf.COL_BLACK;
		if (state.serverHost === conf.STATE_UNKNOWN) {
			col = conf.COL_BLACK_DIM;
		}

		_drawName(state.partName, conf.MARGIN, conf.MARGIN + conf.ROW2_Y, col);
	}

	function _drawScoreLabel() {
		_drawLabel(conf.SCORE_LABEL, 2 * conf.MARGIN + 80, conf.MARGIN + conf.ROW2_Y);
	}

	function _drawScoreName() {
		var col = conf.COL_BLACK;
		if (state.serverHost === conf.STATE_UNKNOWN) {
			col = conf.COL_BLACK_DIM;
		}

		_drawName(state.scoreName, 2 * conf.MARGIN + 80, conf.MARGIN + conf.ROW2_Y, col);
	}

	function _drawServerLabel() {
		_drawLabel(conf.SERVER_LABEL, 2 * conf.MARGIN + 150, conf.MARGIN + conf.ROW1_Y);
	}

	function _drawServerName() {
		var txt = state.serverHost;

		var colRect = conf.COL_GREEN;
		if (state.connState === conf.STATE_INACTIVE) {
			colRect = conf.COL_RED_PALE;
		}

		var col = conf.COL_BLACK;
		if (state.serverHost === conf.STATE_UNKNOWN) {
			col = conf.COL_BLACK_DIM;
		}

		var txtDim = _getTxtDim(txt, conf.FONT_HELVETICA, conf.FONT_SIZE_NAME);
		var txtLen = txtDim[0];

		_drawRect(2 * conf.MARGIN + 150, conf.MARGIN, txtLen + 12, 20, colRect, conf.RECT_RADIUS, conf.RECT_RADIUS);
		_drawName(txt, 2 * conf.MARGIN + 155, conf.MARGIN + conf.ROW1_Y, col);
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

	function _drawCircle(x, y, width, height, colour, isStroke, isFill, strokeCol, lineWidth) {
		if(isStroke && isFill) {
			_setColour(strokeCol);
			g.set_line_width(lineWidth);
			g.ellipse(x, y, width, height);
			g.stroke_preserve();
			_setColour(colour);
			g.fill();
		} else if (isStroke && !isFill) {
			_setColour(strokeCol);
			g.set_line_width(lineWidth);
			g.ellipse(x, y, width, height);
			g.stroke();
		} else if (!isStroke && isFill) {
			_setColour(colour);
			g.ellipse(x, y, width, height);
			g.fill();
		}
	}

	function _drawLabel(lbl, x, y) {
		return _drawText(lbl, x, y, conf.FONT_HELVETICA, conf.FONT_SIZE_NAME, conf.COL_BLACK);
	}

	function _drawName(txt, x, y, col) {
		_drawText(txt, x, y, conf.FONT_HELVETICA, conf.FONT_SIZE_NAME, col);
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
	function _toType(obj) {
		return ({}).toString.call(obj).match(/\s([a-zA-Z]+)/)[1].toLowerCase();
	}
	function _isNumeric(num) {
        if (_isNull(num)) {
            return false;
        }
        return !isNaN(num);
    }
    function _isString(val) {
        return typeof val === conf.STRING;
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
		setTitle: function (name) {
			_setTitle(name);
		},
		toType: function (obj) {
			_toType(obj);
		},
		processAny: function (messagename, args) {
			_processAny(messagename, args);
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
	zs.connected(arguments[0]);
}

function serverHost(val) {
	if (!arguments.length) {
		post("jsui received serverHost no args ");
		return;
	}
	zs.setServerHost(arguments[0]);
}

// bang -- draw and refresh display
function bang() {
	mgraphics.redraw();
}

function clear() {
	bang(); // draw and refresh display
}

function anything(val) {	
	zs.processAny(messagename, arguments);
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

function log(val) {
	post(val);
	post();
}
log.local = 1;

