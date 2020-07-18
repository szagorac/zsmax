{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 5,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 887.0, 422.0, 1524.0, 959.0 ],
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
					"id" : "obj-41",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 671.833333333333485, 490.5, 55.0, 22.0 ],
					"text" : "jongly.aif"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 661.67724609375, 526.5, 55.0, 22.0 ],
					"text" : "anton.aif"
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
					"parameter_mappable" : 0,
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
					"varname" : "panic"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 232.333333333333485, 671.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "bp2" ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-10",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "zsBufferPlayer-bp.maxpat",
					"numinlets" : 5,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 232.333333333333485, 718.0, 321.666666666666742, 91.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 408.0, 493.5, 337.0, 92.0 ],
					"varname" : "zsBufPlayer2",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 600.333333333333485, 682.5, 55.0, 22.0 ],
					"text" : "jongly.aif"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 489.333333333333485, 651.5, 117.0, 22.0 ],
					"text" : "\"0., 1. 1000 0. 1000\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 339.833333333333485, 655.5, 127.0, 22.0 ],
					"text" : "\"0, 1000 1000 0 1000\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 540.333333333333485, 854.5, 68.0, 22.0 ],
					"text" : "send~ out2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 232.333333333333485, 854.5, 68.0, 22.0 ],
					"text" : "send~ out1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 301.333333333333485, 671.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-28",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 459.333333333333485, 682.5, 112.0, 23.0 ],
					"text" : "\"0., 1. 500 0. 500\"",
					"varname" : "b1l2[1]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-29",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 360.333333333333485, 682.5, 86.0, 23.0 ],
					"text" : "\"500, 0 1000\"",
					"varname" : "b1l1[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 618.333333333333485, 651.5, 55.0, 22.0 ],
					"text" : "anton.aif"
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
					"patching_rect" : [ 643.833333333333485, 88.0, 50.0, 15.0 ],
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
					"id" : "obj-97",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 235.67724609375, 402.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "bp1" ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-92",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "zsBufferPlayer-bp.maxpat",
					"numinlets" : 5,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 235.67724609375, 449.0, 321.666666666666629, 91.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 22.0, 493.5, 339.0, 92.0 ],
					"varname" : "zsBufPlayer1",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-91",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 603.67724609375, 413.5, 55.0, 22.0 ],
					"text" : "jongly.aif"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-88",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 492.67724609375, 382.5, 117.0, 22.0 ],
					"text" : "\"0., 1. 1000 0. 1000\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-87",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 343.17724609375, 386.5, 127.0, 22.0 ],
					"text" : "\"0, 1000 1000 0 1000\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-86",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 543.67724609375, 585.5, 68.0, 22.0 ],
					"text" : "send~ out2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-85",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 235.67724609375, 585.5, 68.0, 22.0 ],
					"text" : "send~ out1"
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
					"id" : "obj-82",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 304.67724609375, 402.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-80",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 462.67724609375, 413.5, 112.0, 23.0 ],
					"text" : "\"0., 1. 500 0. 500\"",
					"varname" : "b1l2[3]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-76",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 363.67724609375, 413.5, 86.0, 23.0 ],
					"text" : "\"500, 0 1000\"",
					"varname" : "b1l1[3]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 621.67724609375, 382.5, 55.0, 22.0 ],
					"text" : "anton.aif"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-78",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 569.510579427083485, 84.0, 62.489420572916515, 20.0 ],
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
					"patching_rect" : [ 418.196290016174316, 134.4140625, 38.607419967651367, 19.171875 ],
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
					"patching_rect" : [ 482.32275390625, 129.0, 41.556640625, 19.171875 ],
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
					"patching_rect" : [ 540.5, 129.0, 39.3544921875, 19.171875 ],
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
					"patching_rect" : [ 730.67724609375, 84.0, 16.0, 22.0 ],
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
					"patching_rect" : [ 695.833333333333485, 150.0, 41.5615234375, 19.171875 ],
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
					"patching_rect" : [ 643.833333333333485, 195.0, 47.0, 19.0 ],
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
					"patching_rect" : [ 791.0, 118.0, 55.0, 22.0 ],
					"text" : "jongly.aif"
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
					"id" : "obj-69",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 799.0, 157.5, 55.0, 22.0 ],
					"text" : "anton.aif"
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
						"storage_rect" : [ 24, 79, 813, 980 ]
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
						"gain" : [ -30.137603226425959 ],
						"mcGain" : [ -37.41076115485567 ],
						"panic" : [ 0.0 ],
						"preset" : [ 0.0 ],
						"preset0" : [ 0.0 ]
					}
,
					"text" : "autopattr",
					"varname" : "u522009583"
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
					"patching_rect" : [ 297.5, 43.0, 71.0, 13.0 ],
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
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-10", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-10", 0 ]
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
					"destination" : [ "obj-10", 4 ],
					"source" : [ "obj-12", 0 ]
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
					"destination" : [ "obj-10", 3 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 1 ],
					"midpoints" : [ 800.5, 143.0, 878.0, 143.0, 878.0, 188.0, 1001.25, 188.0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 2 ],
					"source" : [ "obj-17", 0 ]
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
					"destination" : [ "obj-10", 1 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 3 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 2 ],
					"source" : [ "obj-29", 0 ]
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
					"destination" : [ "obj-10", 4 ],
					"source" : [ "obj-30", 0 ]
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
					"destination" : [ "obj-31", 0 ],
					"source" : [ "obj-41", 0 ]
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
					"destination" : [ "obj-92", 4 ],
					"source" : [ "obj-48", 0 ]
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
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-5", 0 ]
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
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 1 ],
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
					"destination" : [ "obj-92", 2 ],
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
					"destination" : [ "obj-92", 3 ],
					"source" : [ "obj-80", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 1 ],
					"source" : [ "obj-82", 0 ]
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
					"destination" : [ "obj-92", 2 ],
					"source" : [ "obj-87", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 3 ],
					"source" : [ "obj-88", 0 ]
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
					"destination" : [ "obj-92", 4 ],
					"source" : [ "obj-91", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-85", 0 ],
					"source" : [ "obj-92", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"source" : [ "obj-92", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 0 ],
					"source" : [ "obj-97", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-10::obj-1" : [ "bufferMute[4]", "linePlay", 0 ],
			"obj-10::obj-13" : [ "FrequencyMLFO[1]", "Pan", 0 ],
			"obj-10::obj-20" : [ "bufferMute[6]", "mute", 0 ],
			"obj-10::obj-23" : [ "zsGain[3]", "gain", 0 ],
			"obj-10::obj-3" : [ "bufferMute[5]", "playBtn", 0 ],
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
			"obj-53::obj-171" : [ "mcgPlayCont", "playCont", 0 ],
			"obj-53::obj-182" : [ "mcgPlayLine", "playLine", 0 ],
			"obj-53::obj-35" : [ "mcgGain", "gain", 0 ],
			"obj-53::obj-38" : [ "mcgHarmonics", "harmonics", 0 ],
			"obj-53::obj-48" : [ "mcgMute", "mute", 0 ],
			"obj-53::obj-75" : [ "mcgWfMode", "mode", 0 ],
			"obj-92::obj-1" : [ "bufferMute[7]", "linePlay", 0 ],
			"obj-92::obj-13" : [ "FrequencyMLFO", "Pan", 0 ],
			"obj-92::obj-20" : [ "bufferMute[2]", "mute", 0 ],
			"obj-92::obj-23" : [ "zsGain[2]", "gain", 0 ],
			"obj-92::obj-3" : [ "bufferMute[3]", "playBtn", 0 ],
			"parameterbanks" : 			{

			}
,
			"parameter_overrides" : 			{
				"obj-10::obj-1" : 				{
					"parameter_longname" : "bufferMute[4]"
				}
,
				"obj-10::obj-13" : 				{
					"parameter_longname" : "FrequencyMLFO[1]"
				}
,
				"obj-10::obj-20" : 				{
					"parameter_longname" : "bufferMute[6]"
				}
,
				"obj-10::obj-23" : 				{
					"parameter_longname" : "zsGain[3]"
				}
,
				"obj-10::obj-3" : 				{
					"parameter_longname" : "bufferMute[5]"
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
				"obj-92::obj-1" : 				{
					"parameter_longname" : "bufferMute[7]"
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
				"name" : "zsBufferPlayer-bp.maxpat",
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
 ],
		"autosave" : 0,
		"boxgroups" : [ 			{
				"boxes" : [ "obj-79", "obj-78", "obj-3", "obj-37", "obj-73", "obj-22", "obj-72", "obj-77", "obj-33" ]
			}
 ],
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
