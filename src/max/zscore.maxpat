{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 7,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 1214.0, 93.0, 1896.0, 959.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
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
					"id" : "obj-81",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 562.333333333333485, 622.5, 113.0, 22.0 ],
					"text" : "UnionRose_b2.wav",
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
					"patching_rect" : [ 455.333333333333485, 626.0, 50.0, 22.0 ],
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
					"patching_rect" : [ 348.333333333333485, 626.0, 24.0, 24.0 ],
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
					"patching_rect" : [ 241.333333333333485, 622.5, 24.0, 24.0 ],
					"varname" : "b2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-94",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 546.333333333333485, 766.5, 68.0, 22.0 ],
					"text" : "send~ out2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-95",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 241.333333333333485, 766.5, 68.0, 22.0 ],
					"text" : "send~ out1"
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
					"maxclass" : "bpatcher",
					"name" : "zsBufGroove-bp.maxpat",
					"numinlets" : 4,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 241.333333333333485, 661.5, 340.0, 98.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 405.0, 493.5, 340.0, 98.0 ],
					"varname" : "zsBufGroove2",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-64",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 574.333333333333485, 374.5, 135.0, 22.0 ],
					"text" : "UnionRose_b12.wav",
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
					"patching_rect" : [ 467.333333333333485, 378.0, 50.0, 22.0 ],
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
					"patching_rect" : [ 360.333333333333485, 378.0, 24.0, 24.0 ],
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
					"patching_rect" : [ 253.333333333333485, 374.5, 24.0, 24.0 ],
					"varname" : "b1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 558.333333333333485, 518.5, 68.0, 22.0 ],
					"text" : "send~ out2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 253.333333333333485, 518.5, 68.0, 22.0 ],
					"text" : "send~ out1"
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
					"maxclass" : "bpatcher",
					"name" : "zsBufGroove-bp.maxpat",
					"numinlets" : 4,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 253.333333333333485, 413.5, 340.0, 95.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 22.0, 493.5, 340.0, 98.0 ],
					"varname" : "zsBufGroove1",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 97.0, 302.5, 39.0, 22.0 ],
					"text" : "tanh~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-47",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 39.75, 302.5, 39.0, 22.0 ],
					"text" : "tanh~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 39.75, 569.0, 58.0, 22.0 ],
					"text" : "mc.tanh~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1443.0, 413.5, 47.0, 22.0 ],
					"text" : "r grLen"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1443.0, 702.5, 49.0, 22.0 ],
					"text" : "s grLen"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 681.49852173158115, 522.5, 55.0, 22.0 ],
					"text" : "anton.aif",
					"varname" : "granulatorFile"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1106.0, 702.5, 68.0, 22.0 ],
					"text" : "send~ out2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 754.0, 702.5, 68.0, 22.0 ],
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
					"id" : "obj-32",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "zsPlayCtrl-bp.maxpat",
					"numinlets" : 6,
					"numoutlets" : 4,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 871.0, 449.0, 606.0, 105.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 136.8544921875, 251.5, 608.1455078125, 108.0 ],
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
					"maxclass" : "bpatcher",
					"name" : "zsGranulator-bp.maxpat",
					"numinlets" : 6,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "" ],
					"patching_rect" : [ 754.0, 569.5, 723.0, 119.5 ],
					"presentation" : 1,
					"presentation_rect" : [ 22.0, 360.5, 723.0, 119.5 ],
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
					"patching_rect" : [ 762.67724609375, 97.5, 44.0, 15.0 ],
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
					"patching_rect" : [ 762.67724609375, 51.5, 61.0, 32.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 752.0, 10.0, 47.0, 32.0 ],
					"saved_attribute_attributes" : 					{
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
					"presentation" : 1,
					"presentation_rect" : [ 29.0, 155.625, 46.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "1", "2", "3", "4", "5", "6", "7", "8", "9", "10" ],
							"parameter_longname" : "presetNo",
							"parameter_mmax" : 9,
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
					"patching_rect" : [ 394.0, 88.0, 51.0, 22.0 ],
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
					"patching_rect" : [ 101.0, 253.0, 81.0, 22.0 ],
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
					"patching_rect" : [ 10.0, 253.0, 81.0, 22.0 ],
					"text" : "receive~ out1"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-78",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 568.898497552469735, 83.203659973762043, 62.489420572916515, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 29.0, 126.828125, 52.556640625, 20.0 ],
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
					"presentation_rect" : [ 22.0, 8.0, 251.0, 103.0 ]
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
					"presentation_rect" : [ 190.5, 126.7421875, 38.607419967651367, 19.171875 ],
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
					"presentation_rect" : [ 93.5, 126.828125, 41.556640625, 19.171875 ],
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
					"presentation_rect" : [ 141.668456077575684, 126.828125, 39.3544921875, 19.171875 ],
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
					"patching_rect" : [ 643.833333333333485, 267.0, 32.0, 22.0 ],
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
					"bgcolor" : [ 0.898039215686275, 0.898039215686275, 0.898039215686275, 1.0 ],
					"elementcolor" : [ 0.517647058823529, 0.517647058823529, 0.517647058823529, 1.0 ],
					"id" : "obj-37",
					"maxclass" : "incdec",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 735.498521731581263, 83.203659973762043, 16.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 78.010579427083485, 153.5390625, 19.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.898039215686275, 0.898039215686275, 0.898039215686275, 1.0 ],
					"bgoncolor" : [ 0.756862745098039, 0.996078431372549, 0.996078431372549, 1.0 ],
					"fontface" : 1,
					"fontlink" : 1,
					"fontsize" : 10.0,
					"id" : "obj-33",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 694.93699829408115, 152.75101505347655, 41.5615234375, 19.171875 ],
					"presentation" : 1,
					"presentation_rect" : [ 189.022948265075684, 153.5390625, 41.5615234375, 19.171875 ],
					"rounded" : 15.0,
					"style" : "default",
					"text" : "Store",
					"textoncolor" : [ 0.07843137254902, 0.07843137254902, 0.07843137254902, 1.0 ],
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
					"patching_rect" : [ 643.833333333333485, 119.0, 29.5, 22.0 ],
					"text" : "+ 1"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.898039215686275, 0.898039215686275, 0.898039215686275, 1.0 ],
					"fontsize" : 9.0,
					"id" : "obj-22",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 643.054009395439607, 200.16966624419095, 47.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 132.8544921875, 153.5390625, 47.0, 19.0 ],
					"textcolor" : [ 0.129411764705882, 0.168627450980392, 0.509803921568627, 1.0 ]
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
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 793.0, 157.5, 55.0, 22.0 ],
					"text" : "jongly.aif",
					"varname" : "mcGrooveFile"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-75",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 893.833333333333371, 24.5, 55.0, 22.0 ],
					"text" : "r gcbLen"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-74",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1305.0, 334.0, 57.0, 22.0 ],
					"text" : "s gcbLen"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 890.0, 339.5, 97.0, 22.0 ],
					"text" : "mc.send~ mcout"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-56",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 39.75, 531.0, 120.0, 22.0 ],
					"text" : "mc.receive~ mcout 2"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.87843137254902, 1.0, 1.0, 1.0 ],
					"color" : [ 0.129411764705882, 0.168627450980392, 0.509803921568627, 1.0 ],
					"elementcolor" : [ 0.811764705882353, 0.843137254901961, 0.866666666666667, 1.0 ],
					"id" : "obj-55",
					"maxclass" : "mc.ezdac~",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 39.75, 749.0, 45.0, 45.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 753.0, 57.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"coldcolor" : [ 0.756862745098039, 0.996078431372549, 0.996078431372549, 1.0 ],
					"id" : "obj-45",
					"lastchannelcount" : 2,
					"maxclass" : "mc.live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "multichannelsignal", "", "float", "list" ],
					"parameter_enable" : 1,
					"parameter_mappable" : 0,
					"patching_rect" : [ 39.75, 598.0, 47.0, 136.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 753.0, 117.0, 47.0, 123.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "mc.gain",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "mc.gain",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"slidercolor" : [ 0.462745098039216, 0.250980392156863, 0.603921568627451, 1.0 ],
					"textcolor" : [ 0.756862745098039, 0.996078431372549, 0.996078431372549, 1.0 ],
					"tribordercolor" : [ 0.129411764705882, 0.168627450980392, 0.509803921568627, 1.0 ],
					"tricolor" : [ 0.898039215686275, 0.898039215686275, 0.898039215686275, 1.0 ],
					"trioncolor" : [ 0.756862745098039, 0.996078431372549, 0.996078431372549, 1.0 ],
					"varname" : "mcGain"
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
					"maxclass" : "bpatcher",
					"name" : "zsGrvCtrl-bp.maxpat",
					"numinlets" : 10,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "int" ],
					"patching_rect" : [ 893.833333333333371, 51.5, 422.000000000000114, 107.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 316.999999999999886, 8.0, 428.000000000000114, 106.0 ],
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
					"maxclass" : "bpatcher",
					"name" : "zsMcGroove-bp.maxpat",
					"numinlets" : 5,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "multichannelsignal", "float" ],
					"patching_rect" : [ 890.0, 202.0, 426.0, 123.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 314.838623046875, 116.0, 430.161376953125, 123.0 ],
					"varname" : "mcGroove",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 48.75, 277.0, 74.0, 22.0 ],
					"text" : "receive~ out"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 55.25, 481.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"coldcolor" : [ 0.756862745098039, 0.996078431372549, 0.996078431372549, 1.0 ],
					"id" : "obj-23",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 62.25, 333.5, 47.0, 132.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 757.0, 360.5, 47.0, 121.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "zsGain",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "gain",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"slidercolor" : [ 0.462745098039216, 0.250980392156863, 0.603921568627451, 1.0 ],
					"textcolor" : [ 0.756862745098039, 0.996078431372549, 0.996078431372549, 1.0 ],
					"tribordercolor" : [ 0.129411764705882, 0.168627450980392, 0.509803921568627, 1.0 ],
					"tricolor" : [ 0.898039215686275, 0.898039215686275, 0.898039215686275, 1.0 ],
					"trioncolor" : [ 0.756862745098039, 0.996078431372549, 0.996078431372549, 1.0 ],
					"varname" : "gain"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 488.0, 168.0, 33.0, 22.0 ],
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
					"patching_rect" : [ 540.5, 168.0, 34.0, 22.0 ],
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
						"client_rect" : [ 4, 44, 358, 172 ],
						"parameter_enable" : 0,
						"parameter_mappable" : 0,
						"storage_rect" : [ 154, 107, 1312, 796 ]
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
						"b2Stop" : [ 0.0 ],
						"gain" : [ -3.110574887816483 ],
						"mcGain" : [ -3.59055118110237 ],
						"preset" : [ 0.0 ],
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
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
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
					"presentation_rect" : [ 22.0, 120.0, 251.0, 72.25 ],
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
					"patching_rect" : [ 1134.0, 807.0, 71.0, 13.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 0.0, 809.0, 603.0 ],
					"proportion" : 0.5,
					"rounded" : 43
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-11", 0 ]
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
					"destination" : [ "obj-53", 1 ],
					"midpoints" : [ 802.5, 189.0, 1001.25, 189.0 ],
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
					"destination" : [ "obj-24", 1 ],
					"source" : [ "obj-23", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"midpoints" : [ 653.333333333333485, 144.0, 591.0, 144.0, 591.0, 213.0, 317.5, 213.0 ],
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
					"destination" : [ "obj-35", 0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"source" : [ "obj-31", 1 ]
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
					"destination" : [ "obj-31", 4 ],
					"source" : [ "obj-32", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 3 ],
					"source" : [ "obj-32", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 2 ],
					"source" : [ "obj-32", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 1 ],
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
					"destination" : [ "obj-53", 3 ],
					"source" : [ "obj-34", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 2 ],
					"source" : [ "obj-34", 0 ]
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
					"destination" : [ "obj-47", 0 ],
					"order" : 1,
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"order" : 0,
					"source" : [ "obj-38", 0 ]
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
					"destination" : [ "obj-31", 0 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"source" : [ "obj-43", 0 ]
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
					"destination" : [ "obj-55", 0 ],
					"source" : [ "obj-45", 0 ]
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
					"destination" : [ "obj-32", 5 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 1 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"source" : [ "obj-50", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 0 ],
					"source" : [ "obj-53", 1 ]
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
					"destination" : [ "obj-43", 0 ],
					"source" : [ "obj-56", 0 ]
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
					"destination" : [ "obj-50", 3 ],
					"source" : [ "obj-64", 0 ]
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
					"destination" : [ "obj-96", 3 ],
					"source" : [ "obj-81", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"source" : [ "obj-83", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"source" : [ "obj-84", 0 ]
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
					"midpoints" : [ 403.5, 153.0, 387.0, 153.0, 387.0, 213.0, 317.5, 213.0 ],
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
					"destination" : [ "obj-96", 0 ],
					"source" : [ "obj-93", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 0 ],
					"source" : [ "obj-96", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-95", 0 ],
					"source" : [ "obj-96", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-23" : [ "zsGain", "gain", 0 ],
			"obj-3" : [ "presetNo", "preset", 0 ],
			"obj-31::obj-155" : [ "SpectraLFOShape[4]", "positionSource", 0 ],
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
			"obj-34::obj-44" : [ "modifySize", "modsize", 0 ],
			"obj-34::obj-6::obj-12" : [ "Mute", "Mute", 0 ],
			"obj-34::obj-6::obj-20" : [ "Frequency", "Freq", 0 ],
			"obj-36" : [ "panicBtn", "panic", 0 ],
			"obj-44" : [ "preset0", "preset0", 0 ],
			"obj-45" : [ "mc.gain", "mc.gain", 0 ],
			"obj-50::obj-10" : [ "linePlayBtn[1]", "stopPlay", 0 ],
			"obj-50::obj-13" : [ "bufgrPan", "Pan", 0 ],
			"obj-50::obj-72" : [ "zsGain[4]", "gain", 0 ],
			"obj-50::obj-75" : [ "bufgrWfMode", "mode", 0 ],
			"obj-50::obj-76" : [ "bufferMute", "mute", 0 ],
			"obj-50::obj-8" : [ "linePlayBtn", "startPlay", 0 ],
			"obj-53::obj-171" : [ "mcgPlayCont", "playCont", 0 ],
			"obj-53::obj-182" : [ "mcgPlayLine", "playLine", 0 ],
			"obj-53::obj-35" : [ "mcgGain", "gain", 0 ],
			"obj-53::obj-38" : [ "mcgHarmonics", "harmonics", 0 ],
			"obj-53::obj-48" : [ "mcgMute", "mute", 0 ],
			"obj-53::obj-75" : [ "mcgWfMode", "mode", 0 ],
			"obj-96::obj-10" : [ "linePlayBtn[3]", "stopPlay", 0 ],
			"obj-96::obj-13" : [ "bufgrPan[1]", "Pan", 0 ],
			"obj-96::obj-72" : [ "bufGrooveGain", "gain", 0 ],
			"obj-96::obj-75" : [ "bufgrWfMode[1]", "mode", 0 ],
			"obj-96::obj-76" : [ "bufferMute[8]", "mute", 0 ],
			"obj-96::obj-8" : [ "linePlayBtn[2]", "startPlay", 0 ],
			"parameterbanks" : 			{

			}
,
			"parameter_overrides" : 			{
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
				"obj-32::obj-51::obj-12" : 				{
					"parameter_longname" : "Mute[5]"
				}
,
				"obj-32::obj-51::obj-20" : 				{
					"parameter_longname" : "Frequency[5]"
				}
,
				"obj-32::obj-80::obj-20" : 				{
					"parameter_longname" : "FrequencyMLFO[2]"
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
				"obj-50::obj-10" : 				{
					"parameter_longname" : "linePlayBtn[1]"
				}
,
				"obj-50::obj-72" : 				{
					"parameter_longname" : "zsGain[4]"
				}
,
				"obj-50::obj-8" : 				{
					"parameter_longname" : "linePlayBtn"
				}
,
				"obj-96::obj-10" : 				{
					"parameter_longname" : "linePlayBtn[3]"
				}
,
				"obj-96::obj-13" : 				{
					"parameter_longname" : "bufgrPan[1]"
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

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "zsPattrStore.json",
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
				"name" : "zsui.js",
				"bootpath" : "~/MyHome/Music/max/1_my/zscore",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
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
				"name" : "zsgran~.maxpat",
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
				"name" : "zsBufGroove-bp.maxpat",
				"bootpath" : "~/MyHome/Music/max/1_my/zscore",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0,
		"styles" : [ 			{
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
		"bgcolor" : [ 0.894117647058824, 0.894117647058824, 0.894117647058824, 1.0 ]
	}

}
