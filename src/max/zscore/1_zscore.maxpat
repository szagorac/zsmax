{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 3,
			"revision" : 1,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 937.0, 213.0, 1176.0, 867.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-59",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1577.5, 100.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 375.630444216247952, 326.419666244190921, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-106",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1740.0, 479.5, 69.0, 22.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-107",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1740.0, 443.5, 93.0, 22.0 ],
					"text" : "presentation $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-109",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1740.0, 409.5, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-111",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1740.0, 374.5, 72.0, 22.0 ],
					"text" : "loadmess 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-66",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 71.0, 18.0, 234.0, 22.0 ],
					"text" : "sendSub mcGroove, mcgHarmonics, int, 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-155",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1038.630444216247952, 392.5, 115.0, 22.0 ],
					"text" : "zsPathFinder audio/"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-154",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1577.5, 157.5, 115.0, 22.0 ],
					"text" : "zsPathFinder audio/"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-153",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 370.5, 385.0, 115.0, 22.0 ],
					"text" : "zsPathFinder audio/"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-152",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 375.630444216247952, 572.5, 115.0, 22.0 ],
					"text" : "zsPathFinder audio/"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-151",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 370.630444216247952, 732.0, 115.0, 22.0 ],
					"text" : "zsPathFinder audio/"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-150",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 370.630444216248009, 895.0, 115.0, 22.0 ],
					"text" : "zsPathFinder audio/"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-10",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "zsClick-bp.maxpat",
					"numinlets" : 1,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 650.5, 437.5, 101.0, 80.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 435.0, 422.5, 101.0, 80.0 ],
					"varname" : "zsClick-bp",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-110",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1045.0, 208.0, 24.0, 24.0 ],
					"varname" : "grooveLine"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-104",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 899.630444216247952, 43.000000000000014, 184.0, 22.0 ],
					"text" : "route grooveCont granulatorCont"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-94",
					"maxclass" : "newobj",
					"numinlets" : 7,
					"numoutlets" : 7,
					"outlettype" : [ "", "", "", "", "", "", "" ],
					"patching_rect" : [ 922.630444216247952, 18.0, 524.0, 22.0 ],
					"text" : "route grooveCont grooveContStop granulatorCont granulatorContStop granulatorLine grooveLine"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-91",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 226.0, 317.0, 69.0, 22.0 ],
					"text" : "route b1 b2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-63",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 761.0, 28.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 176.130444216247952, 88.0, 87.0, 22.0 ],
					"text" : "route play stop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 142.0, 317.0, 69.0, 22.0 ],
					"text" : "route b1 b2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-138",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 537.75, 279.0, 29.5, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-136",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 681.202889117085533, 370.5, 29.5, 22.0 ],
					"text" : "20"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-134",
					"int" : 1,
					"maxclass" : "gswitch",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 540.5, 437.5, 41.0, 32.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-128",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 757.67724609375, 253.0, 50.0, 22.0 ],
					"varname" : "zsPattrFwdMsg"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-126",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 691.489420572916515, 274.5, 29.5, 22.0 ],
					"text" : "50"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-124",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 691.489420572916515, 250.419666244190921, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-123",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 575.489420572916515, 204.669666244190921, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-120",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 575.489420572916515, 340.5, 74.0, 22.0 ],
					"text" : "pack 1. 100."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-121",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 575.489420572916515, 370.5, 39.0, 22.0 ],
					"text" : "$1 $2"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-119",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 694.93699829408115, 308.0, 27.489420572916515, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 127.948803591247952, 218.169666244190921, 28.556640625, 20.0 ],
					"text" : "ms",
					"textcolor" : [ 0.756862745098039, 0.996078431372549, 0.996078431372549, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-118",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 463.510579427083485, 310.5, 67.489420572916515, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 26.858642578125, 196.169666244190921, 65.28271484375, 20.0 ],
					"text" : "Interpolate",
					"textcolor" : [ 0.129411764705882, 0.168627450980392, 0.509803921568627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.129411764705882, 0.168627450980392, 0.509803921568627, 1.0 ],
					"checkedcolor" : [ 0.27843137254902, 0.83921568627451, 1.0, 1.0 ],
					"id" : "obj-117",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 540.5, 310.5, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 33.0, 218.169666244190921, 22.0, 22.0 ],
					"uncheckedcolor" : [ 0.462745098039216, 0.250980392156863, 0.603921568627451, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.129411764705882, 0.168627450980392, 0.509803921568627, 1.0 ],
					"fontsize" : 12.0,
					"id" : "obj-115",
					"maxclass" : "number",
					"maximum" : 60000,
					"minimum" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 637.489420572916515, 308.0, 52.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 65.503977465149319, 218.169666244190921, 57.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-108",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 753.93699829408115, 208.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-105",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 811.0, 238.830333755809022, 51.0, 22.0 ],
					"text" : "send $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-95",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 811.0, 208.0, 130.0, 22.0 ],
					"text" : "zsFilter-bp::filterOutput",
					"varname" : "zsPattrFwdTarget"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-56",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 575.489420572916515, 400.5, 64.0, 22.0 ],
					"text" : "line 1. 500"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-58",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 540.5, 479.5, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 36.0,
					"id" : "obj-17",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 409.143207838927992, 941.5, 40.0, 47.0 ],
					"text" : "4"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 36.0,
					"id" : "obj-27",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 407.130444216247952, 774.0, 40.0, 47.0 ],
					"text" : "3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 370.630444216248009, 871.0, 149.0, 22.0 ],
					"text" : "UnionRose_b2.wav",
					"varname" : "b4File"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-38",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 263.630444216247952, 889.5, 50.0, 22.0 ],
					"varname" : "b4Speed"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 156.630444216247952, 889.5, 24.0, 24.0 ],
					"varname" : "b4Stop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 49.630444216247952, 886.0, 24.0, 24.0 ],
					"varname" : "b4"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "grb4" ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-43",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "zsBufGroove-bp.maxpat",
					"numinlets" : 4,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 49.630444216247952, 925.0, 340.000000000000057, 101.0 ],
					"varname" : "zsBufGroove4",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 370.630444216247952, 708.0, 135.0, 22.0 ],
					"text" : "UnionRose_b1.wav",
					"varname" : "b3File"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-47",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 263.630444216247952, 726.0, 50.0, 22.0 ],
					"varname" : "b3Speed"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 156.630444216247952, 726.0, 24.0, 24.0 ],
					"varname" : "b3Stop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 49.630444216247952, 722.5, 24.0, 24.0 ],
					"varname" : "b3"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "grb3" ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-55",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "zsBufGroove-bp.maxpat",
					"numinlets" : 4,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 49.630444216247952, 761.5, 340.0, 97.0 ],
					"varname" : "zsBufGroove3",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-35",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "zsGigaverb-bp.maxpat",
					"numinlets" : 10,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 591.0, 886.0, 220.0, 119.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 202.202265425282917, 150.5, 253.0, 130.0 ],
					"varname" : "zsGigaverb-bp",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 811.0, 274.5, 233.0, 23.0 ],
					"text" : "pattrforward zsMixer-bp::mixMasterOut",
					"varname" : "zsPattrFwd"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 661.952889117085419, 843.5, 68.0, 22.0 ],
					"text" : "send~ out2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 578.489420572916515, 843.5, 68.0, 22.0 ],
					"text" : "send~ out1"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-19",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "zsMixer-bp.maxpat",
					"numinlets" : 21,
					"numoutlets" : 8,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 681.202889117085533, 703.5, 789.297110882914467, 134.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 368.202889117085533, 8.0, 789.797110882914467, 136.0 ],
					"varname" : "zsMixer-bp",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-12",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "zsDelay-bp.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 855.0, 891.0, 260.0, 126.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 462.202265425282917, 152.5, 260.654297828674316, 126.0 ],
					"varname" : "zsDelay-bp",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-5",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "zsFilterCtrl-bp.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 1535.0, 752.0, 140.0, 72.5 ],
					"presentation" : 1,
					"presentation_rect" : [ 507.0, 289.0, 141.0, 70.5 ],
					"varname" : "zsFilterCtrl-bp",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1170.0, 789.5, 46.0, 22.0 ],
					"text" : "allpass"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 1,
					"enablevscroll" : 0,
					"id" : "obj-99",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "zsFilter-bp.maxpat",
					"numinlets" : 8,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 1149.75, 891.0, 474.5, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 22.0, 289.0, 475.0, 128.0 ],
					"varname" : "zsFilter-bp",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-103",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 773.67724609375, 359.5, 241.0, 22.0 ],
					"text" : "\"0., 1. 1000 1. 15000 0. 16300\"",
					"varname" : "granulatorLineConf"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-101",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 1081.0, 175.96654124419095, 22.0, 22.0 ],
					"text" : "t 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-102",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 1045.0, 175.96654124419095, 22.0, 22.0 ],
					"text" : "t 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-100",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 922.630444216247952, 459.0, 22.0, 22.0 ],
					"text" : "t 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-98",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 883.0, 459.0, 22.0, 22.0 ],
					"text" : "t 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-97",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1081.0, 152.75101505347655, 24.0, 24.0 ],
					"varname" : "grooveContStop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-88",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1045.0, 152.75101505347655, 24.0, 24.0 ],
					"varname" : "grooveCont"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-65",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 922.630444216247952, 415.5, 24.0, 24.0 ],
					"varname" : "granulatorContStop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-76",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 983.571428571428555, 441.5, 24.0, 24.0 ],
					"varname" : "granulatorLine"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-69",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 883.0, 415.5, 24.0, 24.0 ],
					"varname" : "granulatorCont"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 36.0,
					"id" : "obj-85",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 409.143207838927992, 609.0, 40.0, 47.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 372.630444216247952, 553.0, 38.0, 47.0 ],
					"text" : "2"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 36.0,
					"id" : "obj-82",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 407.130444216247952, 422.0, 40.0, 47.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 372.630444216247952, 448.0, 38.0, 47.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-81",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 375.630444216247952, 553.5, 113.0, 35.0 ],
					"text" : "DialogsPitch_b12.wav",
					"varname" : "b2File"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-89",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 263.630444216247952, 557.0, 50.0, 22.0 ],
					"varname" : "b2Speed"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-90",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 156.630444216247952, 557.0, 24.0, 24.0 ],
					"varname" : "b2Stop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-93",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 49.630444216247952, 553.5, 24.0, 24.0 ],
					"varname" : "b2"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "grb2" ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-96",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "zsBufGroove-bp.maxpat",
					"numinlets" : 4,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 49.630444216247952, 592.5, 340.0, 96.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 22.0, 527.5, 335.0, 98.0 ],
					"varname" : "zsBufGroove2",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-64",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 370.5, 363.5, 113.0, 35.0 ],
					"text" : "DialogsPitch_b11.wav",
					"varname" : "b1File"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-62",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 263.630444216247952, 374.0, 50.0, 22.0 ],
					"varname" : "b1Speed"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 156.630444216247952, 374.0, 24.0, 24.0 ],
					"varname" : "b1Stop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 49.630444216247952, 370.5, 24.0, 24.0 ],
					"varname" : "b1"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "grb1" ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-50",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "zsBufGroove-bp.maxpat",
					"numinlets" : 4,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 49.630444216247952, 409.5, 340.0, 97.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 22.0, 422.5, 336.0, 98.0 ],
					"varname" : "zsBufGroove1",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1643.5, 392.5, 47.0, 22.0 ],
					"text" : "r grLen"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1594.0, 635.0, 49.0, 22.0 ],
					"text" : "s grLen"
				}

			}
, 			{
				"box" : 				{
					"dontreplace" : 1,
					"id" : "obj-40",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1038.630444216247952, 359.5, 113.0, 35.0 ],
					"text" : "DialogsRhythm_b2.wav",
					"varname" : "granulatorFile"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-32",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "zsPlayCtrl-bp.maxpat",
					"numinlets" : 6,
					"numoutlets" : 4,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 1058.5, 415.5, 606.0, 105.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 549.8544921875, 397.0, 608.1455078125, 108.0 ],
					"varname" : "zsPlayCtrl-bp",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-31",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "zsGranulator-bp.maxpat",
					"numinlets" : 8,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "" ],
					"patching_rect" : [ 889.0, 532.75, 723.0, 119.5 ],
					"presentation" : 1,
					"presentation_rect" : [ 435.0, 506.0, 723.0, 119.5 ],
					"varname" : "zsGranulator-bp",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 773.67724609375, 119.203659973762058, 44.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "preset0",
							"parameter_shortname" : "preset0",
							"parameter_type" : 0,
							"parameter_unitstyle" : 0
						}

					}
,
					"varname" : "preset0"
				}

			}
, 			{
				"box" : 				{
					"appearance" : 2,
					"fontsize" : 14.0,
					"id" : "obj-36",
					"inactivelcdcolor" : [ 0.811764705882353, 0.843137254901961, 0.866666666666667, 1.0 ],
					"lcdbgcolor" : [ 0.996078431372549, 0.333333333333333, 0.333333333333333, 1.0 ],
					"lcdcolor" : [ 0.050980392156863, 0.050980392156863, 0.050980392156863, 1.0 ],
					"maxclass" : "live.text",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 773.67724609375, 73.203659973762058, 61.0, 32.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 301.202265425282917, 13.0, 47.0, 32.0 ],
					"saved_attribute_attributes" : 					{
						"inactivelcdcolor" : 						{
							"expression" : ""
						}
,
						"lcdbgcolor" : 						{
							"expression" : ""
						}
,
						"lcdcolor" : 						{
							"expression" : ""
						}
,
						"valueof" : 						{
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_longname" : "panicBtn",
							"parameter_mmax" : 1,
							"parameter_shortname" : "panic",
							"parameter_type" : 2
						}

					}
,
					"text" : "Stop",
					"varname" : "stopBtn"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "live.menu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 643.054009395439607, 87.418651190714414, 50.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16" ],
							"parameter_linknames" : 1,
							"parameter_longname" : "preset",
							"parameter_mmax" : 15,
							"parameter_shortname" : "preset",
							"parameter_type" : 2
						}

					}
,
					"varname" : "preset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 317.5, 124.0, 51.0, 22.0 ],
					"text" : "delete 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-84",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 113.5, 241.0, 81.0, 22.0 ],
					"text" : "receive~ out2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-83",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 20.5, 241.0, 81.0, 22.0 ],
					"text" : "receive~ out1"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 14.0,
					"id" : "obj-78",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 637.489420572916515, 43.000000000000014, 72.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 29.0, 142.203125, 61.0, 22.0 ],
					"text" : "Presets",
					"textcolor" : [ 0.129411764705882, 0.168627450980392, 0.509803921568627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"filename" : "zsui.js",
					"id" : "obj-15",
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 14.0, 124.0, 255.0, 105.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 22.0, 8.0, 268.0, 103.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.898039215686275, 0.898039215686275, 0.898039215686275, 1.0 ],
					"bgoncolor" : [ 0.756862745098039, 0.996078431372549, 0.996078431372549, 1.0 ],
					"fontface" : 1,
					"fontlink" : 1,
					"fontsize" : 10.0,
					"id" : "obj-77",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 417.924697596469059, 136.327367635859275, 38.607419967651367, 19.171875 ],
					"presentation" : 1,
					"presentation_rect" : [ 80.294018434997952, 251.171875, 38.607419967651367, 19.171875 ],
					"rounded" : 15.0,
					"style" : "default",
					"text" : "View",
					"textoncolor" : [ 0.07843137254902, 0.07843137254902, 0.07843137254902, 1.0 ],
					"usebgoncolor" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.898039215686275, 0.898039215686275, 0.898039215686275, 1.0 ],
					"bgoncolor" : [ 0.756862745098039, 0.996078431372549, 0.996078431372549, 1.0 ],
					"fontface" : 1,
					"fontlink" : 1,
					"fontsize" : 10.0,
					"id" : "obj-73",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 481.906863252583207, 130.622311164476457, 41.556640625, 19.171875 ],
					"presentation" : 1,
					"presentation_rect" : [ 29.0, 251.0, 41.556640625, 19.171875 ],
					"rounded" : 15.0,
					"style" : "default",
					"text" : "Open",
					"textoncolor" : [ 0.07843137254902, 0.07843137254902, 0.07843137254902, 1.0 ],
					"usebgoncolor" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.898039215686275, 0.898039215686275, 0.898039215686275, 1.0 ],
					"bgoncolor" : [ 0.756862745098039, 0.996078431372549, 0.996078431372549, 1.0 ],
					"fontface" : 1,
					"fontlink" : 1,
					"fontsize" : 10.0,
					"id" : "obj-72",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 539.953198122497952, 130.622311164476457, 39.3544921875, 19.171875 ],
					"presentation" : 1,
					"presentation_rect" : [ 127.948803591247952, 251.171875, 39.3544921875, 19.171875 ],
					"rounded" : 15.0,
					"style" : "default",
					"text" : "Save",
					"textoncolor" : [ 0.07843137254902, 0.07843137254902, 0.07843137254902, 1.0 ],
					"usebgoncolor" : 1
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-71",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 456.072998000000098, 32.0, 94.0, 20.0 ],
					"text" : "ZScore",
					"textcolor" : [ 0.129411764705882, 0.168627450980392, 0.509803921568627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-51",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 334.5, 10.0, 231.0, 20.0 ],
					"text" : "## ZScore master patch ## "
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-68",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 643.833333333333485, 157.5, 41.0, 22.0 ],
					"text" : "set $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-67",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 643.833333333333485, 253.0, 38.0, 22.0 ],
					"text" : "print"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-54",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 643.833333333333485, 230.0, 83.0, 22.0 ],
					"text" : "prepend store"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.129411764705882, 0.168627450980392, 0.509803921568627, 1.0 ],
					"elementcolor" : [ 0.27843137254902, 0.83921568627451, 1.0, 1.0 ],
					"fgcolor" : [ 0.733333333333333, 0.588235294117647, 0.827450980392157, 1.0 ],
					"id" : "obj-37",
					"maxclass" : "incdec",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 735.498521731581263, 83.203659973762043, 16.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 29.0, 164.203125, 30.0, 29.5 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.894117647058824, 0.894117647058824, 0.894117647058824, 1.0 ],
					"bgoncolor" : [ 0.27843137254902, 0.83921568627451, 1.0, 1.0 ],
					"fontlink" : 1,
					"id" : "obj-33",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 694.93699829408115, 152.75101505347655, 44.681640625, 21.40625 ],
					"presentation" : 1,
					"presentation_rect" : [ 127.948803591247952, 169.5, 44.681640625, 21.40625 ],
					"rounded" : 15.0,
					"style" : "default",
					"text" : "Store",
					"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"usebgoncolor" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 643.833333333333485, 119.0, 38.0, 22.0 ],
					"text" : "+ 1"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.129411764705882, 0.168627450980392, 0.509803921568627, 1.0 ],
					"fontsize" : 20.0,
					"id" : "obj-22",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 643.054009395439607, 200.16966624419095, 65.0, 31.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 65.503977465149319, 164.203125, 57.0, 31.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 308.0, 323.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 308.0, 286.0, 74.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 308.0, 253.0, 70.0, 22.0 ],
					"text" : "route recall"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1577.5, 130.622311164476457, 113.0, 35.0 ],
					"text" : "DialogsRhythm_b8.wav",
					"varname" : "grooveFile"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-75",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1122.0, 48.5, 55.0, 22.0 ],
					"text" : "r gcbLen"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-74",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1525.0, 329.5, 57.0, 22.0 ],
					"text" : "s gcbLen"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-34",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "zsGrvCtrl-bp.maxpat",
					"numinlets" : 10,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "int" ],
					"patching_rect" : [ 1122.0, 93.827367635859275, 422.000000000000114, 107.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 730.0, 154.0, 428.000000000000114, 106.0 ],
					"varname" : "grooveControl",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-53",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "zsMcGroove-bp.maxpat",
					"numinlets" : 7,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "float" ],
					"patching_rect" : [ 1116.5, 208.0, 433.0, 122.5 ],
					"presentation" : 1,
					"presentation_rect" : [ 727.838623046875, 262.0, 430.161376953125, 123.0 ],
					"varname" : "mcGroove",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.27843137254902, 0.83921568627451, 1.0, 1.0 ],
					"elementcolor" : [ 0.32156862745098, 0.333333333333333, 0.345098039215686, 1.0 ],
					"id" : "obj-24",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 65.5, 300.0, 45.0, 45.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 301.202265425282917, 66.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 488.0, 168.0, 38.0, 22.0 ],
					"text" : "read"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 540.5, 168.0, 38.0, 22.0 ],
					"text" : "write"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 393.0, 168.0, 89.0, 22.0 ],
					"text" : "storagewindow"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 308.0, 168.0, 77.0, 22.0 ],
					"text" : "clientwindow"
				}

			}
, 			{
				"box" : 				{
					"autorestore" : "zsPattrStore.json",
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 308.0, 227.0, 142.0, 22.0 ],
					"saved_object_attributes" : 					{
						"client_rect" : [ 854, 172, 1208, 300 ],
						"parameter_enable" : 0,
						"parameter_mappable" : 0,
						"storage_rect" : [ 113, 87, 1186, 1210 ]
					}
,
					"text" : "pattrstorage zsPattrStore",
					"varname" : "zsPattrStore"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 273.5, 65.0, 56.0, 22.0 ],
					"restore" : 					{
						"b1" : [ 1.0 ],
						"b1Speed" : [ 0.0 ],
						"b1Stop" : [ 1.0 ],
						"b2" : [ 1.0 ],
						"b2Speed" : [ 0.0 ],
						"b2Stop" : [ 1.0 ],
						"b3" : [ 0.0 ],
						"b3Speed" : [ 0.0 ],
						"b3Stop" : [ 0.0 ],
						"b4" : [ 0.0 ],
						"b4Speed" : [ 0.0 ],
						"b4Stop" : [ 0.0 ],
						"granulatorCont" : [ 1.0 ],
						"granulatorContStop" : [ 1.0 ],
						"granulatorLine" : [ 1.0 ],
						"grooveCont" : [ 1.0 ],
						"grooveContStop" : [ 0.0 ],
						"grooveLine" : [ 0.0 ],
						"preset" : [ 2.0 ],
						"preset0" : [ 0.0 ],
						"stopBtn" : [ 0.0 ]
					}
,
					"text" : "autopattr",
					"varname" : "u147001176"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 14.0, 18.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "list", "list", "" ],
					"patching_rect" : [ 14.0, 53.0, 66.0, 22.0 ],
					"text" : "mxj zscore"
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"grad1" : [ 0.756862745098039, 0.996078431372549, 0.996078431372549, 1.0 ],
					"grad2" : [ 0.2, 0.2, 0.2, 1.0 ],
					"id" : "obj-79",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 297.5, 40.0, 71.0, 13.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 22.0, 136.48046875, 168.630444216247952, 143.51953125 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"grad1" : [ 0.435294117647059, 0.568627450980392, 0.698039215686274, 1.0 ],
					"grad2" : [ 0.32156862745098, 0.333333333333333, 0.345098039215686, 1.0 ],
					"id" : "obj-70",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 370.5, 57.5, 71.0, 13.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 0.0, 1173.0, 644.0 ],
					"proportion" : 0.5,
					"rounded" : 43
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"midpoints" : [ 742.0, 690.0, 666.0, 690.0, 666.0, 837.0, 671.452889117085419, 837.0 ],
					"source" : [ "obj-10", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"midpoints" : [ 660.0, 828.0, 587.989420572916515, 828.0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"source" : [ "obj-100", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"source" : [ "obj-101", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"source" : [ "obj-102", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 7 ],
					"midpoints" : [ 783.17724609375, 528.0, 1602.5, 528.0 ],
					"source" : [ "obj-103", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"midpoints" : [ 991.630444216247952, 138.0, 1032.0, 138.0, 1032.0, 261.0, 1056.0, 261.0, 1056.0, 351.0, 1023.0, 351.0, 1023.0, 402.0, 932.130444216247952, 402.0 ],
					"source" : [ "obj-104", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-97", 0 ],
					"midpoints" : [ 909.130444216247952, 138.0, 1090.5, 138.0 ],
					"source" : [ "obj-104", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-105", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-106", 0 ],
					"source" : [ "obj-107", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-108", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-107", 0 ],
					"source" : [ "obj-109", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 1 ],
					"midpoints" : [ 1054.5, 234.0, 1098.0, 234.0, 1098.0, 198.0, 1107.0, 198.0, 1107.0, 198.0, 1195.0, 198.0 ],
					"source" : [ "obj-110", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-109", 0 ],
					"source" : [ "obj-111", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-120", 1 ],
					"source" : [ "obj-115", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-134", 0 ],
					"source" : [ "obj-117", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 16 ],
					"midpoints" : [ 1105.5, 1023.0, 1135.0, 1023.0, 1135.0, 852.0, 1498.0, 852.0, 1498.0, 681.0, 1306.940577823417243, 681.0 ],
					"source" : [ "obj-12", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 15 ],
					"midpoints" : [ 864.5, 1023.0, 574.0, 1023.0, 574.0, 826.0, 666.0, 826.0, 666.0, 681.0, 1268.425722279271213, 681.0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-121", 0 ],
					"source" : [ "obj-120", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"source" : [ "obj-121", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-120", 0 ],
					"order" : 0,
					"source" : [ "obj-123", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-134", 1 ],
					"order" : 1,
					"source" : [ "obj-123", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-126", 0 ],
					"order" : 0,
					"source" : [ "obj-124", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-136", 0 ],
					"order" : 1,
					"source" : [ "obj-124", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-138", 0 ],
					"order" : 2,
					"source" : [ "obj-124", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-115", 0 ],
					"source" : [ "obj-126", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-128", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"source" : [ "obj-134", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 2 ],
					"source" : [ "obj-136", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-117", 0 ],
					"source" : [ "obj-138", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 3 ],
					"source" : [ "obj-150", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 3 ],
					"source" : [ "obj-151", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-96", 3 ],
					"source" : [ "obj-152", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 3 ],
					"source" : [ "obj-153", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 3 ],
					"midpoints" : [ 1587.0, 204.0, 1333.0, 204.0 ],
					"source" : [ "obj-154", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 2 ],
					"midpoints" : [ 1048.130444216247952, 519.0, 1071.0, 519.0, 1071.0, 528.0, 1099.64285714285711, 528.0 ],
					"source" : [ "obj-155", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-154", 0 ],
					"order" : 0,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-155", 0 ],
					"midpoints" : [ 1587.0, 153.0, 1702.0, 153.0, 1702.0, 315.0, 1702.0, 315.0, 1702.0, 387.0, 1048.130444216247952, 387.0 ],
					"order" : 1,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 1 ],
					"midpoints" : [ 1240.91511117631012, 879.0, 1105.5, 879.0 ],
					"source" : [ "obj-19", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"midpoints" : [ 1130.872666764465293, 879.0, 864.5, 879.0 ],
					"source" : [ "obj-19", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-19", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 1 ],
					"midpoints" : [ 1020.830222352620353, 868.0, 622.833333333333371, 868.0 ],
					"source" : [ "obj-19", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"midpoints" : [ 910.787777940775413, 867.0, 600.5, 867.0 ],
					"source" : [ "obj-19", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 1 ],
					"midpoints" : [ 1461.0, 879.0, 1224.321428571428669, 879.0 ],
					"source" : [ "obj-19", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 0 ],
					"midpoints" : [ 1350.957555588155174, 879.0, 1159.25, 879.0 ],
					"source" : [ "obj-19", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-93", 0 ],
					"midpoints" : [ 176.5, 357.0, 36.0, 357.0, 36.0, 540.0, 59.130444216247952, 540.0 ],
					"source" : [ "obj-23", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-123", 0 ],
					"order" : 1,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"order" : 0,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 0 ],
					"midpoints" : [ 219.630444216247952, 111.0, 381.0, 111.0, 381.0, 111.0, 624.0, 111.0, 624.0, 63.0, 624.0, 63.0, 624.0, 15.0, 909.130444216247952, 15.0 ],
					"order" : 0,
					"source" : [ "obj-26", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"midpoints" : [ 185.630444216247952, 111.0, 279.0, 111.0, 279.0, 265.0, 151.5, 265.0 ],
					"order" : 1,
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-91", 0 ],
					"midpoints" : [ 219.630444216247952, 111.0, 279.0, 111.0, 279.0, 303.0, 235.5, 303.0 ],
					"order" : 1,
					"source" : [ "obj-26", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 0 ],
					"midpoints" : [ 185.630444216247952, 111.0, 381.0, 111.0, 381.0, 110.0, 625.0, 110.0, 625.0, 63.0, 624.0, 63.0, 624.0, 12.0, 932.130444216247952, 12.0 ],
					"order" : 0,
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"order" : 1,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"order" : 0,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-150", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 7 ],
					"source" : [ "obj-31", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 6 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"source" : [ "obj-31", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 6 ],
					"source" : [ "obj-32", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 5 ],
					"source" : [ "obj-32", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 4 ],
					"source" : [ "obj-32", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 3 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 5 ],
					"source" : [ "obj-34", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 4 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 13 ],
					"midpoints" : [ 801.5, 1017.0, 574.0, 1017.0, 574.0, 828.0, 666.0, 828.0, 666.0, 681.0, 1191.396011190980062, 681.0 ],
					"source" : [ "obj-35", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 12 ],
					"midpoints" : [ 600.5, 1017.0, 573.0, 1017.0, 573.0, 828.0, 666.0, 828.0, 666.0, 681.0, 1152.881155646834259, 681.0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 2 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 1 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-155", 0 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-151", 0 ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 5 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 2 ],
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 2 ],
					"midpoints" : [ 1179.5, 879.0, 1289.39285714285711, 879.0 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 1 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 3 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 1 ],
					"midpoints" : [ 380.130444216247952, 540.0, 687.0, 540.0, 687.0, 690.0, 729.217744661231222, 690.0 ],
					"source" : [ "obj-50", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"midpoints" : [ 59.130444216247952, 540.0, 687.0, 540.0, 687.0, 699.0, 690.702889117085533, 699.0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 10 ],
					"midpoints" : [ 1333.0, 351.0, 767.0, 351.0, 767.0, 492.0, 768.0, 492.0, 768.0, 681.0, 1075.85144455854288, 681.0 ],
					"source" : [ "obj-53", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 9 ],
					"midpoints" : [ 1126.0, 351.0, 768.0, 351.0, 768.0, 600.0, 767.0, 600.0, 767.0, 681.0, 1037.336589014397077, 681.0 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 0 ],
					"source" : [ "obj-53", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"midpoints" : [ 653.333333333333485, 260.0, 462.0, 260.0, 462.0, 213.0, 317.5, 213.0 ],
					"order" : 1,
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"order" : 0,
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-134", 2 ],
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"order" : 1,
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"order" : 2,
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"order" : 7,
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"order" : 5,
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"order" : 3,
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-81", 0 ],
					"order" : 0,
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 0 ],
					"midpoints" : [ 385.130444216247952, 351.0, 357.0, 351.0, 357.0, 357.0, 36.0, 357.0, 36.0, 540.0, 166.130444216247952, 540.0 ],
					"order" : 4,
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-93", 0 ],
					"midpoints" : [ 385.130444216247952, 351.0, 357.0, 351.0, 357.0, 357.0, 36.0, 357.0, 36.0, 540.0, 59.130444216247952, 540.0 ],
					"order" : 6,
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"midpoints" : [ 550.0, 504.0, 516.0, 504.0, 516.0, 342.0, 450.0, 342.0, 450.0, 261.0, 462.0, 261.0, 462.0, 213.0, 317.5, 213.0 ],
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"midpoints" : [ 54.833333333333329, 87.0, 162.0, 87.0, 162.0, 75.0, 270.0, 75.0, 270.0, 99.0, 294.0, 99.0, 294.0, 206.0, 561.0, 206.0, 561.0, 264.0, 624.0, 264.0, 624.0, 336.0, 660.0, 336.0 ],
					"source" : [ "obj-6", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-6", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 1 ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 2 ],
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-153", 0 ],
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-100", 0 ],
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-98", 0 ],
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-72", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 1 ],
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-77", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-152", 0 ],
					"source" : [ "obj-81", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-83", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 1 ],
					"source" : [ "obj-84", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-102", 0 ],
					"source" : [ "obj-88", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-96", 2 ],
					"source" : [ "obj-89", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"midpoints" : [ 327.0, 153.0, 387.0, 153.0, 387.0, 213.0, 317.5, 213.0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-96", 1 ],
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"source" : [ "obj-91", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 0 ],
					"midpoints" : [ 260.5, 357.0, 36.0, 357.0, 36.0, 540.0, 166.130444216247952, 540.0 ],
					"source" : [ "obj-91", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-96", 0 ],
					"source" : [ "obj-93", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-110", 0 ],
					"midpoints" : [ 1352.963777549581209, 78.0, 1095.0, 78.0, 1095.0, 138.0, 1032.0, 138.0, 1032.0, 204.0, 1054.5, 204.0 ],
					"source" : [ "obj-94", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"midpoints" : [ 1184.630444216247952, 77.0, 1173.0, 77.0, 1173.0, 77.0, 1032.0, 77.0, 1032.0, 261.0, 1056.0, 261.0, 1056.0, 351.0, 1023.0, 351.0, 1023.0, 402.0, 932.130444216247952, 402.0 ],
					"source" : [ "obj-94", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"midpoints" : [ 1100.463777549581209, 75.0, 1033.0, 75.0, 1033.0, 261.0, 1056.0, 261.0, 1056.0, 351.0, 1023.0, 351.0, 1023.0, 402.0, 892.5, 402.0 ],
					"source" : [ "obj-94", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 0 ],
					"midpoints" : [ 1268.797110882914694, 79.0, 1095.0, 79.0, 1095.0, 138.0, 1032.0, 138.0, 1032.0, 261.0, 1056.0, 261.0, 1056.0, 353.0, 1023.0, 353.0, 1023.0, 426.0, 993.071428571428555, 426.0 ],
					"source" : [ "obj-94", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 0 ],
					"midpoints" : [ 932.130444216247952, 138.0, 1054.5, 138.0 ],
					"source" : [ "obj-94", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-97", 0 ],
					"midpoints" : [ 1016.297110882914581, 138.0, 1090.5, 138.0 ],
					"source" : [ "obj-94", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-105", 0 ],
					"source" : [ "obj-95", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 4 ],
					"source" : [ "obj-96", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 3 ],
					"source" : [ "obj-96", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-101", 0 ],
					"source" : [ "obj-97", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"source" : [ "obj-98", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 19 ],
					"midpoints" : [ 1614.75, 1023.0, 1662.0, 1023.0, 1662.0, 852.0, 1497.0, 852.0, 1497.0, 681.0, 1422.485144455854424, 681.0 ],
					"source" : [ "obj-99", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 18 ],
					"midpoints" : [ 1159.25, 1023.0, 1134.0, 1023.0, 1134.0, 852.0, 1497.0, 852.0, 1497.0, 681.0, 1383.970288911708394, 681.0 ],
					"source" : [ "obj-99", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-10::obj-107" : [ "clickVolume", "vol", 0 ],
			"obj-10::obj-17" : [ "clickMute", "mute", 0 ],
			"obj-10::obj-35" : [ "number", "number", 0 ],
			"obj-12::obj-1" : [ "delayInput", "in", 0 ],
			"obj-12::obj-13" : [ "delayTimeL", "time", 0 ],
			"obj-12::obj-15" : [ "delayHPFL", "HPF", 0 ],
			"obj-12::obj-17" : [ "delayLPFL", "LPF", 0 ],
			"obj-12::obj-20" : [ "delayFeedbackL", "feedback", 0 ],
			"obj-12::obj-34" : [ "delayLPFR", "LPF", 0 ],
			"obj-12::obj-35" : [ "delayHPFR", "HPF", 0 ],
			"obj-12::obj-36" : [ "delayTimeR", "time", 0 ],
			"obj-12::obj-37" : [ "delayFeedbackR", "feedback", 0 ],
			"obj-12::obj-51" : [ "delayOutput", "out", 0 ],
			"obj-12::obj-76" : [ "delayMute", "mute", 0 ],
			"obj-19::obj-100" : [ "mixOutCh4", "out", 0 ],
			"obj-19::obj-106" : [ "mixInCh4[1]", "in", 0 ],
			"obj-19::obj-107" : [ "mixOutCh5", "out", 0 ],
			"obj-19::obj-11" : [ "sendCh2[1]", "delay", 0 ],
			"obj-19::obj-128" : [ "mixInCh4[2]", "in", 0 ],
			"obj-19::obj-129" : [ "mixOutCh6", "out", 0 ],
			"obj-19::obj-156" : [ "mixInCh4[3]", "in", 0 ],
			"obj-19::obj-157" : [ "mixOutCh7", "out", 0 ],
			"obj-19::obj-205" : [ "sendCh2Flt", "filter", 0 ],
			"obj-19::obj-206" : [ "sendCh2Del", "delay", 0 ],
			"obj-19::obj-207" : [ "sendCh2Rev", "reverb", 0 ],
			"obj-19::obj-209" : [ "sendCh3Flt", "filter", 0 ],
			"obj-19::obj-210" : [ "sendCh3Del", "delay", 0 ],
			"obj-19::obj-211" : [ "sendCh3Rev", "reverb", 0 ],
			"obj-19::obj-213" : [ "sendCh4Flt", "filter", 0 ],
			"obj-19::obj-214" : [ "sendCh4Del", "delay", 0 ],
			"obj-19::obj-215" : [ "sendCh4Rev", "reverb", 0 ],
			"obj-19::obj-221" : [ "sendCh6Flt", "filter", 0 ],
			"obj-19::obj-223" : [ "sendCh6Rev", "reverb", 0 ],
			"obj-19::obj-226" : [ "sendCh7Del", "delay", 0 ],
			"obj-19::obj-227" : [ "sendCh7Rev", "reverb", 0 ],
			"obj-19::obj-23" : [ "mixInCh1", "in", 0 ],
			"obj-19::obj-24" : [ "mixOutCh1", "out", 0 ],
			"obj-19::obj-25" : [ "mixInCh2", "in", 0 ],
			"obj-19::obj-27" : [ "mixInCh3", "in", 0 ],
			"obj-19::obj-31" : [ "mixInCh4", "in", 0 ],
			"obj-19::obj-72" : [ "mixMasterOut", "master out", 0 ],
			"obj-19::obj-76" : [ "mixerMute", "mute", 0 ],
			"obj-19::obj-8" : [ "sendCh3[1]", "filter", 0 ],
			"obj-19::obj-84" : [ "sendCh1[2]", "reverb", 0 ],
			"obj-19::obj-98" : [ "mixOutCh2", "out", 0 ],
			"obj-19::obj-99" : [ "mixOutCh3", "out", 0 ],
			"obj-3" : [ "preset", "preset", 0 ],
			"obj-31::obj-155" : [ "SpectraLFOShape[4]", "positionSource", 0 ],
			"obj-31::obj-165" : [ "grModeDecrement", "modedec", 0 ],
			"obj-31::obj-168" : [ "grModeIncrement", "modeinc", 0 ],
			"obj-31::obj-171" : [ "grPlayCont", "playCont", 0 ],
			"obj-31::obj-182" : [ "grPlayLine", "playLine", 0 ],
			"obj-31::obj-6" : [ "zsgGain", "gain", 0 ],
			"obj-31::obj-64" : [ "zsgrpan", "pan", 0 ],
			"obj-31::obj-67" : [ "mcgMute[1]", "mute", 0 ],
			"obj-32::obj-168::obj-12" : [ "Mute[4]", "Mute", 0 ],
			"obj-32::obj-168::obj-20" : [ "Frequency[4]", "Freq", 0 ],
			"obj-32::obj-17" : [ "pcRangeMute", "rangeMute", 0 ],
			"obj-32::obj-20" : [ "LFOMod[1]", "LFOMod", 0 ],
			"obj-32::obj-21" : [ "pcSelStartMute", "pcSelStartMute", 0 ],
			"obj-32::obj-32" : [ "pcSelStartMin", "pcSelStartMin", 0 ],
			"obj-32::obj-36" : [ "pcSelStartFreq", "selStartFreq", 0 ],
			"obj-32::obj-44" : [ "modifySize[1]", "modsize", 0 ],
			"obj-32::obj-51::obj-12" : [ "Mute[5]", "Mute", 0 ],
			"obj-32::obj-51::obj-20" : [ "Frequency[5]", "Freq", 0 ],
			"obj-32::obj-61" : [ "pcSelEndMute", "pcSelEndMute", 0 ],
			"obj-32::obj-79" : [ "LFOSelEnd", "EndMod", 0 ],
			"obj-32::obj-80::obj-12" : [ "MuteMLFO", "Mute", 0 ],
			"obj-32::obj-80::obj-13" : [ "ModMLFO", "Mod", 0 ],
			"obj-32::obj-80::obj-20" : [ "FrequencyMLFO[2]", "Freq", 0 ],
			"obj-32::obj-80::obj-75" : [ "MLFOShape", "Shape", 0 ],
			"obj-32::obj-88::obj-12" : [ "Mute[6]", "Mute", 0 ],
			"obj-32::obj-88::obj-20" : [ "Frequency[6]", "Freq", 0 ],
			"obj-34::obj-13::obj-12" : [ "Mute[3]", "Mute", 0 ],
			"obj-34::obj-13::obj-13" : [ "Mod[1]", "Mod", 0 ],
			"obj-34::obj-13::obj-20" : [ "Frequency[3]", "Freq", 0 ],
			"obj-34::obj-13::obj-75" : [ "SpectraLFOShape[3]", "Shape", 0 ],
			"obj-34::obj-17" : [ "mutePosition", "mutepos", 0 ],
			"obj-34::obj-20" : [ "LFOMod", "LFOMod", 0 ],
			"obj-34::obj-44" : [ "modifySize", "mutesize", 0 ],
			"obj-34::obj-6::obj-12" : [ "Mute", "Mute", 0 ],
			"obj-34::obj-6::obj-20" : [ "Frequency", "Freq", 0 ],
			"obj-35::obj-1" : [ "revSize", "Size", 0 ],
			"obj-35::obj-10" : [ "revTime", "Time", 0 ],
			"obj-35::obj-2" : [ "revRegen", "Regen", 0 ],
			"obj-35::obj-24" : [ "revInput", "in", 0 ],
			"obj-35::obj-4" : [ "revDamp", "Damp", 0 ],
			"obj-35::obj-5" : [ "revDry", "Dry", 0 ],
			"obj-35::obj-53" : [ "revOutput", "Out", 0 ],
			"obj-35::obj-6" : [ "revEarly", "Early", 0 ],
			"obj-35::obj-7" : [ "revTail", "Tail", 0 ],
			"obj-35::obj-76" : [ "delayMute[1]", "mute", 0 ],
			"obj-35::obj-8" : [ "revSpread", "Spread", 0 ],
			"obj-36" : [ "panicBtn", "panic", 0 ],
			"obj-43::obj-10" : [ "stopPlayBtn", "stopPlay", 0 ],
			"obj-43::obj-11" : [ "loopPlayBtn[2]", "loopPlay", 0 ],
			"obj-43::obj-13" : [ "bufgrPan[2]", "Pan", 0 ],
			"obj-43::obj-72" : [ "bufGrooveGain[4]", "gain", 0 ],
			"obj-43::obj-75" : [ "bufgrWfMode[2]", "mode", 0 ],
			"obj-43::obj-76" : [ "bufferMute[1]", "mute", 0 ],
			"obj-43::obj-8" : [ "linePlayBtn[4]", "startPlay", 0 ],
			"obj-44" : [ "preset0", "preset0", 0 ],
			"obj-50::obj-10" : [ "stopPlayBtn[4]", "stopPlay", 0 ],
			"obj-50::obj-11" : [ "loopPlayBtn[1]", "loopPlay", 0 ],
			"obj-50::obj-13" : [ "bufgrPan", "Pan", 0 ],
			"obj-50::obj-72" : [ "bufGrooveGain[3]", "gain", 0 ],
			"obj-50::obj-75" : [ "bufgrWfMode", "mode", 0 ],
			"obj-50::obj-76" : [ "bufferMute", "mute", 0 ],
			"obj-50::obj-8" : [ "startPlayBtn", "startPlay", 0 ],
			"obj-53::obj-171" : [ "mcgPlayCont", "playCont", 0 ],
			"obj-53::obj-182" : [ "mcgPlayLine", "playLine", 0 ],
			"obj-53::obj-38" : [ "mcgHarmonics", "harmonics", 0 ],
			"obj-53::obj-48" : [ "mcgMute", "mute", 0 ],
			"obj-53::obj-56" : [ "mcHarmIncrement", "harminc", 0 ],
			"obj-53::obj-60" : [ "mcModeDecrement", "modedec", 0 ],
			"obj-53::obj-61" : [ "mcModeIncrement", "modeinc", 0 ],
			"obj-53::obj-73" : [ "mcgGain", "gain", 0 ],
			"obj-53::obj-75" : [ "mcgWfMode", "mode", 0 ],
			"obj-53::obj-80" : [ "mcHarmonicDecrement", "harmdec", 0 ],
			"obj-55::obj-10" : [ "stopPlayBtn[3]", "stopPlay", 0 ],
			"obj-55::obj-11" : [ "loopPlayBtn[3]", "loopPlay", 0 ],
			"obj-55::obj-13" : [ "bufgrPan[3]", "Pan", 0 ],
			"obj-55::obj-72" : [ "bufGrooveGain[5]", "gain", 0 ],
			"obj-55::obj-75" : [ "bufgrWfMode[3]", "mode", 0 ],
			"obj-55::obj-76" : [ "bufferMute[2]", "mute", 0 ],
			"obj-55::obj-8" : [ "linePlayBtn[5]", "startPlay", 0 ],
			"obj-5::obj-12" : [ "fcFreqFrequency", "Freq", 0 ],
			"obj-5::obj-21" : [ "fcFreqMin", "Min", 0 ],
			"obj-5::obj-22" : [ "fcFreqMax", "Max", 0 ],
			"obj-5::obj-5::obj-12" : [ "Mute[10]", "Mute", 0 ],
			"obj-5::obj-5::obj-20" : [ "Frequency[10]", "Freq", 0 ],
			"obj-5::obj-76" : [ "fliterCtrlMute", "mute", 0 ],
			"obj-96::obj-10" : [ "linePlayBtn[3]", "stopPlay", 0 ],
			"obj-96::obj-11" : [ "loopPlayBtn", "loopPlay", 0 ],
			"obj-96::obj-13" : [ "bufgrPan[1]", "Pan", 0 ],
			"obj-96::obj-72" : [ "bufGrooveGain", "gain", 0 ],
			"obj-96::obj-75" : [ "bufgrWfMode[1]", "mode", 0 ],
			"obj-96::obj-76" : [ "bufferMute[8]", "mute", 0 ],
			"obj-96::obj-8" : [ "linePlayBtn[2]", "startPlay", 0 ],
			"obj-99::obj-1" : [ "filterSpectral", "mute", 0 ],
			"obj-99::obj-12" : [ "filterGain", "Gain", 0 ],
			"obj-99::obj-14" : [ "filterFreq", "Freq", 0 ],
			"obj-99::obj-30" : [ "filterMod", "Mod", 0 ],
			"obj-99::obj-3::obj-12" : [ "Mute[8]", "Mute", 0 ],
			"obj-99::obj-3::obj-20" : [ "Frequency[8]", "Freq", 0 ],
			"obj-99::obj-45" : [ "filterModIntensity", "intensity", 0 ],
			"obj-99::obj-5" : [ "filterRes", "Res", 0 ],
			"obj-99::obj-61" : [ "filterInput", "in", 0 ],
			"obj-99::obj-64" : [ "filterOutput", "out", 0 ],
			"obj-99::obj-75" : [ "filterMode", "Mode", 0 ],
			"obj-99::obj-76" : [ "filterMute", "mute", 0 ],
			"obj-99::obj-80::obj-12" : [ "MLFOMute", "Mute", 0 ],
			"obj-99::obj-80::obj-13" : [ "MLFOMod", "Mod", 0 ],
			"obj-99::obj-80::obj-20" : [ "MLFOFrequency", "Freq", 0 ],
			"obj-99::obj-80::obj-75" : [ "SpectraLFOShape[5]", "Shape", 0 ],
			"parameterbanks" : 			{

			}
,
			"parameter_overrides" : 			{
				"obj-12::obj-1" : 				{
					"parameter_initial" : 0.0,
					"parameter_longname" : "delayInput",
					"parameter_range" : [ -72.0, 0.0 ],
					"parameter_shortname" : "in"
				}
,
				"obj-12::obj-17" : 				{
					"parameter_initial" : 20000.0
				}
,
				"obj-12::obj-34" : 				{
					"parameter_initial" : 20000.0,
					"parameter_longname" : "delayLPFR"
				}
,
				"obj-12::obj-35" : 				{
					"parameter_longname" : "delayHPFR"
				}
,
				"obj-12::obj-36" : 				{
					"parameter_longname" : "delayTimeR"
				}
,
				"obj-12::obj-37" : 				{
					"parameter_longname" : "delayFeedbackR"
				}
,
				"obj-12::obj-51" : 				{
					"parameter_initial" : 1.0,
					"parameter_longname" : "delayOutput",
					"parameter_range" : [ 0.0, 5.0 ],
					"parameter_shortname" : "out",
					"parameter_unitstyle" : 1
				}
,
				"obj-12::obj-76" : 				{
					"parameter_invisible" : 0,
					"parameter_longname" : "delayMute",
					"parameter_modmode" : 0,
					"parameter_type" : 2,
					"parameter_unitstyle" : 10
				}
,
				"obj-19::obj-100" : 				{
					"parameter_shortname" : "out"
				}
,
				"obj-19::obj-106" : 				{
					"parameter_longname" : "mixInCh4[1]",
					"parameter_shortname" : "in"
				}
,
				"obj-19::obj-107" : 				{
					"parameter_shortname" : "out"
				}
,
				"obj-19::obj-11" : 				{
					"parameter_longname" : "sendCh2[1]"
				}
,
				"obj-19::obj-128" : 				{
					"parameter_longname" : "mixInCh4[2]",
					"parameter_shortname" : "in"
				}
,
				"obj-19::obj-129" : 				{
					"parameter_shortname" : "out"
				}
,
				"obj-19::obj-156" : 				{
					"parameter_longname" : "mixInCh4[3]",
					"parameter_shortname" : "in"
				}
,
				"obj-19::obj-157" : 				{
					"parameter_shortname" : "out"
				}
,
				"obj-19::obj-23" : 				{
					"parameter_shortname" : "in"
				}
,
				"obj-19::obj-24" : 				{
					"parameter_shortname" : "out"
				}
,
				"obj-19::obj-25" : 				{
					"parameter_shortname" : "in"
				}
,
				"obj-19::obj-27" : 				{
					"parameter_shortname" : "in"
				}
,
				"obj-19::obj-31" : 				{
					"parameter_shortname" : "in"
				}
,
				"obj-19::obj-76" : 				{
					"parameter_longname" : "mixerMute"
				}
,
				"obj-19::obj-8" : 				{
					"parameter_longname" : "sendCh3[1]"
				}
,
				"obj-19::obj-84" : 				{
					"parameter_longname" : "sendCh1[2]"
				}
,
				"obj-19::obj-98" : 				{
					"parameter_shortname" : "out"
				}
,
				"obj-19::obj-99" : 				{
					"parameter_shortname" : "out"
				}
,
				"obj-31::obj-155" : 				{
					"parameter_invisible" : 0,
					"parameter_longname" : "SpectraLFOShape[4]",
					"parameter_modmode" : 0,
					"parameter_range" : [ "all", "selection", "external" ],
					"parameter_type" : 2
				}
,
				"obj-31::obj-171" : 				{
					"parameter_invisible" : 0,
					"parameter_longname" : "grPlayCont",
					"parameter_modmode" : 0,
					"parameter_shortname" : "playCont",
					"parameter_type" : 2
				}
,
				"obj-31::obj-182" : 				{
					"parameter_longname" : "grPlayLine",
					"parameter_shortname" : "playLine"
				}
,
				"obj-31::obj-6" : 				{
					"parameter_longname" : "zsgGain"
				}
,
				"obj-31::obj-67" : 				{
					"parameter_longname" : "mcgMute[1]"
				}
,
				"obj-32::obj-168::obj-12" : 				{
					"parameter_longname" : "Mute[4]"
				}
,
				"obj-32::obj-168::obj-20" : 				{
					"parameter_longname" : "Frequency[4]"
				}
,
				"obj-32::obj-17" : 				{
					"parameter_longname" : "pcRangeMute",
					"parameter_shortname" : "rangeMute"
				}
,
				"obj-32::obj-36" : 				{
					"parameter_longname" : "pcSelStartFreq",
					"parameter_shortname" : "selStartFreq"
				}
,
				"obj-32::obj-44" : 				{
					"parameter_longname" : "modifySize[1]"
				}
,
				"obj-32::obj-51::obj-12" : 				{
					"parameter_longname" : "Mute[5]"
				}
,
				"obj-32::obj-51::obj-20" : 				{
					"parameter_longname" : "Frequency[5]"
				}
,
				"obj-32::obj-79" : 				{
					"parameter_longname" : "LFOSelEnd"
				}
,
				"obj-32::obj-80::obj-12" : 				{
					"parameter_longname" : "MuteMLFO"
				}
,
				"obj-32::obj-80::obj-13" : 				{
					"parameter_longname" : "ModMLFO"
				}
,
				"obj-32::obj-80::obj-20" : 				{
					"parameter_longname" : "FrequencyMLFO[2]"
				}
,
				"obj-32::obj-80::obj-75" : 				{
					"parameter_longname" : "MLFOShape"
				}
,
				"obj-32::obj-88::obj-12" : 				{
					"parameter_longname" : "Mute[6]"
				}
,
				"obj-32::obj-88::obj-20" : 				{
					"parameter_longname" : "Frequency[6]"
				}
,
				"obj-34::obj-13::obj-12" : 				{
					"parameter_longname" : "Mute[3]"
				}
,
				"obj-34::obj-13::obj-13" : 				{
					"parameter_longname" : "Mod[1]"
				}
,
				"obj-34::obj-13::obj-20" : 				{
					"parameter_longname" : "Frequency[3]"
				}
,
				"obj-34::obj-13::obj-75" : 				{
					"parameter_longname" : "SpectraLFOShape[3]"
				}
,
				"obj-34::obj-44" : 				{
					"parameter_longname" : "modifySize"
				}
,
				"obj-34::obj-6::obj-12" : 				{
					"parameter_longname" : "Mute"
				}
,
				"obj-34::obj-6::obj-20" : 				{
					"parameter_longname" : "Frequency"
				}
,
				"obj-35::obj-24" : 				{
					"parameter_longname" : "revInput"
				}
,
				"obj-35::obj-76" : 				{
					"parameter_longname" : "delayMute[1]"
				}
,
				"obj-43::obj-10" : 				{
					"parameter_longname" : "stopPlayBtn"
				}
,
				"obj-43::obj-11" : 				{
					"parameter_longname" : "loopPlayBtn[2]"
				}
,
				"obj-43::obj-13" : 				{
					"parameter_longname" : "bufgrPan[2]"
				}
,
				"obj-43::obj-72" : 				{
					"parameter_longname" : "bufGrooveGain[4]"
				}
,
				"obj-43::obj-75" : 				{
					"parameter_longname" : "bufgrWfMode[2]"
				}
,
				"obj-43::obj-76" : 				{
					"parameter_longname" : "bufferMute[1]"
				}
,
				"obj-43::obj-8" : 				{
					"parameter_longname" : "linePlayBtn[4]"
				}
,
				"obj-50::obj-10" : 				{
					"parameter_linknames" : 1,
					"parameter_longname" : "stopPlayBtn[4]"
				}
,
				"obj-50::obj-11" : 				{
					"parameter_longname" : "loopPlayBtn[1]"
				}
,
				"obj-50::obj-13" : 				{
					"parameter_longname" : "bufgrPan"
				}
,
				"obj-50::obj-72" : 				{
					"parameter_linknames" : 1,
					"parameter_longname" : "bufGrooveGain[3]"
				}
,
				"obj-50::obj-75" : 				{
					"parameter_linknames" : 1,
					"parameter_longname" : "bufgrWfMode"
				}
,
				"obj-50::obj-76" : 				{
					"parameter_linknames" : 1,
					"parameter_longname" : "bufferMute"
				}
,
				"obj-50::obj-8" : 				{
					"parameter_linknames" : 1,
					"parameter_longname" : "startPlayBtn"
				}
,
				"obj-53::obj-171" : 				{
					"parameter_linknames" : 1,
					"parameter_longname" : "mcgPlayCont"
				}
,
				"obj-53::obj-182" : 				{
					"parameter_linknames" : 1,
					"parameter_longname" : "mcgPlayLine"
				}
,
				"obj-53::obj-38" : 				{
					"parameter_linknames" : 1,
					"parameter_longname" : "mcgHarmonics"
				}
,
				"obj-53::obj-48" : 				{
					"parameter_linknames" : 1,
					"parameter_longname" : "mcgMute"
				}
,
				"obj-53::obj-56" : 				{
					"parameter_shortname" : "harminc"
				}
,
				"obj-53::obj-60" : 				{
					"parameter_shortname" : "modedec"
				}
,
				"obj-53::obj-61" : 				{
					"parameter_shortname" : "modeinc"
				}
,
				"obj-53::obj-73" : 				{
					"parameter_initial_enable" : 0,
					"parameter_linknames" : 1,
					"parameter_longname" : "mcgGain"
				}
,
				"obj-53::obj-75" : 				{
					"parameter_linknames" : 1,
					"parameter_longname" : "mcgWfMode"
				}
,
				"obj-53::obj-80" : 				{
					"parameter_shortname" : "harmdec"
				}
,
				"obj-55::obj-10" : 				{
					"parameter_longname" : "stopPlayBtn[3]"
				}
,
				"obj-55::obj-11" : 				{
					"parameter_longname" : "loopPlayBtn[3]"
				}
,
				"obj-55::obj-13" : 				{
					"parameter_longname" : "bufgrPan[3]"
				}
,
				"obj-55::obj-72" : 				{
					"parameter_longname" : "bufGrooveGain[5]"
				}
,
				"obj-55::obj-75" : 				{
					"parameter_longname" : "bufgrWfMode[3]"
				}
,
				"obj-55::obj-76" : 				{
					"parameter_longname" : "bufferMute[2]"
				}
,
				"obj-55::obj-8" : 				{
					"parameter_longname" : "linePlayBtn[5]"
				}
,
				"obj-5::obj-5::obj-12" : 				{
					"parameter_longname" : "Mute[10]"
				}
,
				"obj-5::obj-5::obj-20" : 				{
					"parameter_longname" : "Frequency[10]"
				}
,
				"obj-96::obj-10" : 				{
					"parameter_longname" : "linePlayBtn[3]"
				}
,
				"obj-96::obj-11" : 				{
					"parameter_initial_enable" : 0,
					"parameter_invisible" : 0,
					"parameter_longname" : "loopPlayBtn",
					"parameter_modmode" : 0,
					"parameter_shortname" : "loopPlay",
					"parameter_type" : 2,
					"parameter_unitstyle" : 10
				}
,
				"obj-96::obj-13" : 				{
					"parameter_longname" : "bufgrPan[1]"
				}
,
				"obj-96::obj-72" : 				{
					"parameter_longname" : "bufGrooveGain"
				}
,
				"obj-96::obj-75" : 				{
					"parameter_longname" : "bufgrWfMode[1]"
				}
,
				"obj-96::obj-76" : 				{
					"parameter_longname" : "bufferMute[8]"
				}
,
				"obj-96::obj-8" : 				{
					"parameter_longname" : "linePlayBtn[2]"
				}
,
				"obj-99::obj-3::obj-12" : 				{
					"parameter_longname" : "Mute[8]"
				}
,
				"obj-99::obj-3::obj-20" : 				{
					"parameter_longname" : "Frequency[8]"
				}
,
				"obj-99::obj-45" : 				{
					"parameter_longname" : "filterModIntensity",
					"parameter_range" : [ 0.0, 5.0 ],
					"parameter_shortname" : "intensity",
					"parameter_unitstyle" : 1
				}
,
				"obj-99::obj-61" : 				{
					"parameter_initial" : 0.0,
					"parameter_longname" : "filterInput",
					"parameter_range" : [ -72.0, 6.0 ]
				}
,
				"obj-99::obj-64" : 				{
					"parameter_initial" : 1.0,
					"parameter_longname" : "filterOutput"
				}
,
				"obj-99::obj-76" : 				{
					"parameter_invisible" : 0,
					"parameter_longname" : "filterMute",
					"parameter_modmode" : 0,
					"parameter_type" : 2,
					"parameter_unitstyle" : 10
				}
,
				"obj-99::obj-80::obj-75" : 				{
					"parameter_longname" : "SpectraLFOShape[5]"
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"parameter_map" : 		{
			"midi" : 			{
				"mcGain" : 				{
					"srcname" : "2.ctrl.0.chan.midi",
					"min" : -70.0,
					"max" : 6.0,
					"flags" : 2
				}
,
				"gain" : 				{
					"srcname" : "3.ctrl.0.chan.midi",
					"min" : -70.0,
					"max" : 6.0,
					"flags" : 2
				}
,
				"panicBtn" : 				{
					"srcname" : "46.ctrl.0.chan.midi",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 2
				}
,
				"PresetIncrement" : 				{
					"srcname" : "48.ctrl.0.chan.midi",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 2
				}
,
				"PresetDecrement" : 				{
					"srcname" : "47.ctrl.0.chan.midi",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 2
				}
,
				"mixInCh1" : 				{
					"srcname" : "2.ctrl.0.chan.midi",
					"min" : -70.0,
					"max" : 12.0,
					"flags" : 2
				}
,
				"mixInCh2" : 				{
					"srcname" : "3.ctrl.0.chan.midi",
					"min" : -70.0,
					"max" : 12.0,
					"flags" : 2
				}
,
				"mixInCh3" : 				{
					"srcname" : "4.ctrl.0.chan.midi",
					"min" : -70.0,
					"max" : 12.0,
					"flags" : 2
				}
,
				"mixInCh4" : 				{
					"srcname" : "5.ctrl.0.chan.midi",
					"min" : -70.0,
					"max" : 12.0,
					"flags" : 2
				}
,
				"mixInCh4[1]" : 				{
					"srcname" : "6.ctrl.0.chan.midi",
					"min" : -70.0,
					"max" : 12.0,
					"flags" : 2
				}
,
				"mixInCh4[2]" : 				{
					"srcname" : "8.ctrl.0.chan.midi",
					"min" : -70.0,
					"max" : 12.0,
					"flags" : 2
				}
,
				"mixInCh4[3]" : 				{
					"srcname" : "9.ctrl.0.chan.midi",
					"min" : -70.0,
					"max" : 12.0,
					"flags" : 2
				}
,
				"sendCh3[1]" : 				{
					"srcname" : "14.ctrl.0.chan.midi",
					"min" : -72.0,
					"max" : 0.0,
					"flags" : 2
				}
,
				"sendCh2Flt" : 				{
					"srcname" : "15.ctrl.0.chan.midi",
					"min" : -72.0,
					"max" : 0.0,
					"flags" : 2
				}
,
				"sendCh3Flt" : 				{
					"srcname" : "16.ctrl.0.chan.midi",
					"min" : -72.0,
					"max" : 0.0,
					"flags" : 2
				}
,
				"sendCh4Flt" : 				{
					"srcname" : "17.ctrl.0.chan.midi",
					"min" : -72.0,
					"max" : 0.0,
					"flags" : 2
				}
,
				"sendCh7Del" : 				{
					"srcname" : "20.ctrl.0.chan.midi",
					"min" : -72.0,
					"max" : 0.0,
					"flags" : 2
				}
,
				"mcgPlayCont" : 				{
					"srcname" : "26.ctrl.0.chan.midi",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 2
				}
,
				"mcgPlayLine" : 				{
					"srcname" : "36.ctrl.0.chan.midi",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 2
				}
,
				"grPlayCont" : 				{
					"srcname" : "25.ctrl.0.chan.midi",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 2
				}
,
				"grPlayLine" : 				{
					"srcname" : "35.ctrl.0.chan.midi",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 2
				}
,
				"mixerMute" : 				{
					"srcname" : "31.ctrl.0.chan.midi",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 2
				}
,
				"startPlayBtn" : 				{
					"srcname" : "23.ctrl.0.chan.midi",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 2
				}
,
				"linePlayBtn[2]" : 				{
					"srcname" : "24.ctrl.0.chan.midi",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 2
				}
,
				"stopPlayBtn[4]" : 				{
					"srcname" : "33.ctrl.0.chan.midi",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 2
				}
,
				"linePlayBtn[3]" : 				{
					"srcname" : "34.ctrl.0.chan.midi",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 2
				}
,
				"clickVolume" : 				{
					"srcname" : "12.ctrl.0.chan.midi",
					"min" : -72.0,
					"max" : 12.0,
					"flags" : 2
				}
,
				"clickMute" : 				{
					"srcname" : "30.ctrl.0.chan.midi",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 2
				}
,
				"number" : 				{
					"srcname" : "21.ctrl.0.chan.midi",
					"min" : 1.0,
					"max" : 10.0,
					"flags" : 2
				}
,
				"mixMasterOut" : 				{
					"srcname" : "13.ctrl.0.chan.midi",
					"min" : -70.0,
					"max" : 12.0,
					"flags" : 2
				}
,
				"delayMute[1]" : 				{
					"srcname" : "27.ctrl.0.chan.midi",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 2
				}
,
				"delayMute" : 				{
					"srcname" : "28.ctrl.0.chan.midi",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 2
				}
,
				"filterMute" : 				{
					"srcname" : "29.ctrl.0.chan.midi",
					"min" : 0.0,
					"max" : 1.0,
					"flags" : 2
				}
,
				"revSize" : 				{
					"srcname" : "18.ctrl.0.chan.midi",
					"min" : 0.1,
					"max" : 300.0,
					"flags" : 2
				}
,
				"delayFeedbackR" : 				{
					"srcname" : "19.ctrl.0.chan.midi",
					"min" : -72.0,
					"max" : 0.0,
					"flags" : 2
				}
,
				"delayFeedbackL" : 				{
					"srcname" : "19.ctrl.0.chan.midi",
					"min" : -72.0,
					"max" : 0.0,
					"flags" : 2
				}
,
				"filterRes" : 				{
					"srcname" : "20.ctrl.0.chan.midi",
					"min" : 0.0,
					"max" : 25.0,
					"flags" : 2
				}

			}

		}
,
		"dependency_cache" : [ 			{
				"name" : "mxj.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "zsBufGroove-bp.maxpat",
				"bootpath" : "~/MyHome/Music/max/1_my/zscore",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "zsClick-bp.maxpat",
				"bootpath" : "~/MyHome/Music/max/1_my/zscore",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "zsDelay-bp.maxpat",
				"bootpath" : "~/MyHome/Music/max/1_my/zscore",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "zsFilter-bp.maxpat",
				"bootpath" : "~/MyHome/Music/max/1_my/zscore",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "zsFilterCtrl-bp.maxpat",
				"bootpath" : "~/MyHome/Music/max/1_my/zscore",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "zsGigaverb-bp.maxpat",
				"bootpath" : "~/MyHome/Music/max/1_my/zscore",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "zsGranulator-bp.maxpat",
				"bootpath" : "~/MyHome/Music/max/1_my/zscore",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "zsGrvCtrl-bp.maxpat",
				"bootpath" : "~/MyHome/Music/max/1_my/zscore",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "zsLFO-bp.maxpat",
				"bootpath" : "~/MyHome/Music/max/1_my/zscore",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "zsMLFO-bp.maxpat",
				"bootpath" : "~/MyHome/Music/max/1_my/zscore",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "zsMcGroove-bp.maxpat",
				"bootpath" : "~/MyHome/Music/max/1_my/zscore",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "zsMixer-bp.maxpat",
				"bootpath" : "~/MyHome/Music/max/1_my/zscore",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "zsPathFinder.maxpat",
				"bootpath" : "~/MyHome/Music/max/1_my/zscore",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "zsPattrStore.json",
				"bootpath" : "~/MyHome/Music/max/1_my/zscore",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "zsPlayCtrl-bp.maxpat",
				"bootpath" : "~/MyHome/Music/max/1_my/zscore",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "zsgran~.maxpat",
				"bootpath" : "~/MyHome/Music/max/1_my/zscore",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "zsui.js",
				"bootpath" : "~/MyHome/Music/max/1_my/zscore",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0,
		"styles" : [ 			{
				"name" : "AudioStatus_Menu",
				"default" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.294118, 0.313726, 0.337255, 1 ],
						"color1" : [ 0.454902, 0.462745, 0.482353, 0.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "color"
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "maxscore.default.buttons",
				"default" : 				{
					"accentcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ],
		"accentcolor" : [ 0.811764705882353, 0.843137254901961, 0.866666666666667, 1.0 ],
		"textcolor" : [ 0.733333333333333, 0.588235294117647, 0.827450980392157, 1.0 ],
		"textcolor_inverse" : [ 0.756862745098039, 0.996078431372549, 0.996078431372549, 1.0 ],
		"bgcolor" : [ 0.894117647058824, 0.894117647058824, 0.894117647058824, 1.0 ]
	}

}
