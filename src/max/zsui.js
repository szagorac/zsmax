// XY coordinate for relative_coords = 0
// (0, 0) the top-left

autowatch = 1;

inlets = 1;
outlets = 1;

mgraphics.init();
mgraphics.relative_coords = 0;
mgraphics.autofill = 0;

var zs = (function (g, m) {

	var pattrStore = null;

	var cfg = {
		PATTR_STORE: "zsPattrStore",
		EMPTY: "",
		NEW_LINE: "\n",
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
		CMD_INT: "int",
		CMD_STOP: "stop",
		CMD_PLAY: "play",
		CMD_BANG: "bang",
		CMD_PRESET: "preset",		
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
		connState: cfg.STATE_INACTIVE,
		serverHost: cfg.STATE_UNKNOWN,
		scoreName: cfg.EMPTY,
		partName: cfg.EMPTY,
		tempo: cfg.EMPTY, 
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
	function _getPattrStore() {
		if(!_isNull(pattrStore)) {
			return pattrStore;
		}
		pattrStore = _getObj(cfg.PATTR_STORE);
		if(_isNull(pattrStore)) {
			_logError("Could not find pattr store: " + cfg.PATTR_STORE);
			return null;
		}
		return pattrStore;
	}
	function _resetSemaphore() {
		for (i = 0; i < state.circleNo; i++) {
			state.semaphoreState[i] = 0;
			state.semaphoreCol[i] = 0;
		}
	}
	function _connected(isConnected) {
		if (isConnected === 0) {
			state.connState = cfg.STATE_INACTIVE;
		} else {
			state.connState = cfg.STATE_ACTIVE;
		}

		_getPattrStore();
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
		var obj = _getObj(objName);
		if(_isNull(obj)){
			_logError("play: Could not find object for name: " + objName);
			return;
		}
		_sendTo(obj, [cfg.CMD_BANG]);
	}
	function _preset(args) {
		if(_isNull(args)) {
			_logError("preset: invalid args: " + args);
			return;
		}
		var preset  = 1;
		var target = cfg.PATTR_STORE;
		if(args.length === 2) {
			target = args[0];
			preset = args[1];
		} else if(args.length === 1) {
			preset = args[0];
		}
		if(_isString(preset)) {
			preset = parseInt(args[0], 10);
		}
		_log("preset: received preset: " + preset + " target: " + target);

		var ptst = _getPattrStore();
		if(_isNull(ptst)){
			_logError("preset: Could not find patter store, ignoring preset: " + preset);
			return;
		}
		// var presetNo = parseInt(preset, 10);	
		_sendTo(ptst, [cfg.CMD_INT, preset]);
	}	
	function _getObj(objName) {
		if(_isNull(objName)) {
			_logError("getObj: invalid object name argument");
			return null;
		}
		if(!_isString(objName)){
			_logError("getObj: invalid obj name argument type for: " + objName);
			return null;
		}
		return m.patcher.getnamed(objName);
	}
	function _sendTo(obj, args) {
		if(_isNull(obj)){
			_logError("sendToObj: invalid object");
			return;
		}
		if(!_isArray(args)){
			_logError("sendToObj: invalid argument array");
			return;
		}
		_log("_sendTo: " + obj.varname + " args: " + args);
		obj.message.apply(obj, args);
	}
	function _processAny(messagename, args) {
		if(_isNull(messagename)) {
			return;
		}

		switch(messagename) {
			case cfg.CMD_SET_TITLE:
				_setTitle(args[0]);
				break;
			case cfg.CMD_SET_PART:
				_setPart(args[0]);
				break;
			case cfg.CMD_RESET_STAVES:
				_resetStaves();
				break;
			case cfg.CMD_RESET_INST:
				_resetInstrument();
				break;
			case cfg.CMD_BEATERS_ON:
				_beatersOn(args[0], args[1]);
				break;
			case cfg.CMD_BEATERS_OFF:
				_beatersOff(args[0]);
				break;
			case cfg.CMD_SET_TEMPO:
				_setTempo(args[0]);
				break;
			case cfg.CMD_STOP:
				_stop();
				break;
			case cfg.CMD_PLAY:
				_play(args[0]);
				break;
			case cfg.CMD_PRESET:
				_preset(args);
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
		_drawRect(0, 0, state.patchInfo.width, state.patchInfo.height, cfg.COL_WHITE);
	}

	function _drawZscoreLabel() {
		// var width = state.patchInfo.width;
		// var tm = _getTxtDim(conf.ZSCORE_LABEL, conf.FONT_VERDANA, conf.FONT_SIZE_ZSCORE_NAME);
		// var tw = tm[0];
		_drawText(cfg.ZSCORE_LABEL, 2 * cfg.MARGIN + 80, cfg.MARGIN + cfg.ROW1_Y, cfg.FONT_VERDANA, cfg.FONT_SIZE_ZSCORE_NAME, cfg.COL_PURPLE);
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
			var x = cfg.MARGIN + (state.circleNo - 1 - i) * (cfg.SEMAPHORE_RADIUS + 5);
			var col = cfg.COL_WHITE_TRANSPARENT;

			switch(st) {
				case 1:
					col = cfg.COL_GREEN;
					break;
				case 2:
					col = cfg.COL_GREEN;
					break;
				case 3: 
					col = cfg.COL_ORANGE;
					break;
				case 4:
					col = cfg.COL_RED;	
					break;
			}

			_drawCircle(x, cfg.MARGIN, cfg.SEMAPHORE_RADIUS, cfg.SEMAPHORE_RADIUS, col, true, true, cfg.COL_BLACK, 0.5);
		}		
	}
	function _drawServerState() {
		// _drawServerLabel();
		_drawServerName();
	}
	function _drawPartLabel() {
		_drawLabel(cfg.PART_LABEL, cfg.MARGIN, cfg.MARGIN + cfg.ROW2_Y);
	}
	function _drawPartName() {
		var col = cfg.COL_BLACK;
		if (state.serverHost === cfg.STATE_UNKNOWN) {
			col = cfg.COL_BLACK_DIM;
		}

		_drawName(state.partName, cfg.MARGIN, cfg.MARGIN + cfg.ROW2_Y, col);
	}
	function _drawScoreLabel() {
		_drawLabel(cfg.SCORE_LABEL, 2 * cfg.MARGIN + 80, cfg.MARGIN + cfg.ROW2_Y);
	}
	function _drawScoreName() {
		var col = cfg.COL_BLACK;
		if (state.serverHost === cfg.STATE_UNKNOWN) {
			col = cfg.COL_BLACK_DIM;
		}

		_drawName(state.scoreName, 2 * cfg.MARGIN + 80, cfg.MARGIN + cfg.ROW2_Y, col);
	}
	function _drawServerLabel() {
		_drawLabel(cfg.SERVER_LABEL, 2 * cfg.MARGIN + 150, cfg.MARGIN + cfg.ROW1_Y);
	}
	function _drawServerName() {
		var txt = state.serverHost;

		var colRect = cfg.COL_GREEN;
		if (state.connState === cfg.STATE_INACTIVE) {
			colRect = cfg.COL_RED_PALE;
		}

		var col = cfg.COL_BLACK;
		if (state.serverHost === cfg.STATE_UNKNOWN) {
			col = cfg.COL_BLACK_DIM;
		}

		var txtDim = _getTxtDim(txt, cfg.FONT_HELVETICA, cfg.FONT_SIZE_NAME);
		var txtLen = txtDim[0];

		_drawRect(2 * cfg.MARGIN + 150, cfg.MARGIN, txtLen + 12, 20, colRect, cfg.RECT_RADIUS, cfg.RECT_RADIUS);
		_drawName(txt, 2 * cfg.MARGIN + 155, cfg.MARGIN + cfg.ROW1_Y, col);
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
		return _drawText(lbl, x, y, cfg.FONT_HELVETICA, cfg.FONT_SIZE_NAME, cfg.COL_BLACK);
	}
	function _drawName(txt, x, y, col) {
		_drawText(txt, x, y, cfg.FONT_HELVETICA, cfg.FONT_SIZE_NAME, col);
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
	function _logError(val) {
		m.error(val + cfg.NEW_LINE);
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
        return typeof val === cfg.STRING;
	}
	function _isArray(val) {
        return Array.isArray(val);
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

