{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 11,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 1012.0, 79.0, 1731.0, 1133.0 ],
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
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-112",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1315.0, 997.0, 360.0, 23.0 ],
					"text" : "0.131521 0. -0.131521 -1.89817 0.90311"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-111",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1601.0, 736.0, 62.489420572916515, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1599.510579427083485, 736.0, 52.556640625, 20.0 ],
					"text" : "Q",
					"textcolor" : [ 0.129411764705882, 0.168627450980392, 0.509803921568627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-110",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1513.510579427083485, 736.0, 62.489420572916515, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1511.510579427083485, 736.0, 52.556640625, 20.0 ],
					"text" : "gain",
					"textcolor" : [ 0.129411764705882, 0.168627450980392, 0.509803921568627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-109",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1425.510579427083485, 736.0, 62.489420572916515, 33.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 1424.0, 734.0, 52.556640625, 33.0 ],
					"text" : "cuttoff freq",
					"textcolor" : [ 0.129411764705882, 0.168627450980392, 0.509803921568627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"format" : 6,
					"id" : "obj-106",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1601.0, 771.5, 55.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"format" : 6,
					"id" : "obj-107",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1521.0, 771.5, 55.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"format" : 6,
					"id" : "obj-108",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1431.0, 771.5, 57.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "edit_mode",
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-105",
					"lock" : 1,
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"orientation" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1335.0, 763.0, 83.0, 46.0 ],
					"text_width" : 83.0
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-104",
					"linmarkers" : [ 0.0, 11025.0, 16537.5 ],
					"logmarkers" : [ 0.0, 100.0, 1000.0, 10000.0 ],
					"maxclass" : "filtergraph~",
					"nfilters" : 1,
					"numinlets" : 8,
					"numoutlets" : 7,
					"outlettype" : [ "list", "float", "float", "float", "float", "list", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1335.0, 827.0, 256.0, 128.0 ],
					"setfilter" : [ 0, 8, 1, 0, 0, 505.78607177734375, 3.839351892471313, 0.70710676908493, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-103",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 781.630444216247952, 364.5, 241.0, 22.0 ],
					"text" : "\"0., 1. 15000 1. 1000 0. 16300\"",
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
					"patching_rect" : [ 882.0, 174.669666244190921, 22.0, 22.0 ],
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
					"patching_rect" : [ 846.0, 174.669666244190921, 22.0, 22.0 ],
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
					"patching_rect" : [ 882.0, 151.454140053476522, 24.0, 24.0 ],
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
					"patching_rect" : [ 846.0, 151.454140053476522, 24.0, 24.0 ],
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
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-91",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 753.93699829408115, 40.0, 35.0, 23.0 ],
					"text" : "dec"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-92",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 708.630444216247952, 40.0, 36.0, 23.0 ],
					"text" : "inc"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-80",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 753.93699829408115, 10.0, 24.0, 24.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "off", "on" ],
							"parameter_linknames" : 1,
							"parameter_longname" : "PresetDecrement",
							"parameter_mmax" : 1,
							"parameter_shortname" : "presetdec",
							"parameter_type" : 2
						}

					}
,
					"varname" : "PresetDecrement"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-66",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 708.630444216247952, 10.0, 24.0, 24.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "off", "on" ],
							"parameter_linknames" : 1,
							"parameter_longname" : "PresetIncrement",
							"parameter_mmax" : 1,
							"parameter_shortname" : "presetinc",
							"parameter_type" : 2
						}

					}
,
					"varname" : "PresetIncrement"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 36.0,
					"id" : "obj-87",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1066.130444216248179, 836.0, 40.0, 47.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 747.0, 602.5, 38.0, 47.0 ],
					"text" : "4"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 36.0,
					"id" : "obj-86",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 562.0, 827.0, 40.0, 47.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 360.0, 602.5, 38.0, 47.0 ],
					"text" : "3"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 36.0,
					"id" : "obj-85",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 580.143207838927992, 610.0, 40.0, 47.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 747.0, 493.5, 38.0, 47.0 ],
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
					"patching_rect" : [ 578.130444216247952, 423.0, 40.0, 47.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 360.0, 493.5, 38.0, 47.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1029.630444216247952, 771.5, 113.0, 22.0 ],
					"text" : "UnionRose_b2.wav",
					"varname" : "b4File"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-12",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 922.630444216247952, 775.0, 50.0, 22.0 ],
					"varname" : "b4Speed"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 815.630444216247952, 775.0, 24.0, 24.0 ],
					"varname" : "b4Stop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 708.630444216247952, 771.5, 24.0, 24.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "off", "on" ],
							"parameter_longname" : "b4",
							"parameter_mmax" : 1,
							"parameter_shortname" : "b4",
							"parameter_type" : 2
						}

					}
,
					"varname" : "b4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1013.630444216247952, 915.5, 68.0, 22.0 ],
					"text" : "send~ out2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 708.630444216247952, 915.5, 68.0, 22.0 ],
					"text" : "send~ out1"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "grb4" ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"embed" : 1,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-27",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "zsBufGroove-bp.maxpat",
					"numinlets" : 4,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 11,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 2612.0, 344.0, 1266.0, 805.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 582.499999999999886, 88.0, 83.0, 22.0 ],
									"restore" : [ "UnionRose_b2.wav" ],
									"saved_object_attributes" : 									{
										"parameter_enable" : 0,
										"parameter_mappable" : 0
									}
,
									"text" : "pattr fileName",
									"varname" : "fileName"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.435294117647059, 0.568627450980392, 0.698039215686274, 1.0 ],
									"activebgoncolor" : [ 0.996078431372549, 0.274509803921569, 0.274509803921569, 1.0 ],
									"activetextcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
									"activetextoncolor" : [ 0.0, 0.019608, 0.078431, 1.0 ],
									"bgcolor" : [ 0.101961, 0.101961, 0.101961, 0.78 ],
									"bgoncolor" : [ 0.737254901960784, 0.737254901960784, 0.737254901960784, 1.0 ],
									"bordercolor" : [ 0.0, 0.019608, 0.078431, 0.37 ],
									"fontsize" : 11.0,
									"id" : "obj-10",
									"maxclass" : "live.text",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 83.75, 101.0, 49.999999999999986, 23.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 120.0, 3.676516532897949, 44.0, 14.764644622802734 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_defer" : 1,
											"parameter_enum" : [ "val1", "val2" ],
											"parameter_initial" : [ 0.0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "stopPlayBtn",
											"parameter_mmax" : 1,
											"parameter_shortname" : "stopPlay",
											"parameter_type" : 2
										}

									}
,
									"text" : "stop",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"texton" : "stop",
									"varname" : "stopPlayBtn"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.435294117647059, 0.568627450980392, 0.698039215686274, 1.0 ],
									"activebgoncolor" : [ 0.996078431372549, 0.274509803921569, 0.274509803921569, 1.0 ],
									"activetextcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
									"activetextoncolor" : [ 0.0, 0.019608, 0.078431, 1.0 ],
									"bgcolor" : [ 0.101961, 0.101961, 0.101961, 0.78 ],
									"bgoncolor" : [ 0.737254901960784, 0.737254901960784, 0.737254901960784, 1.0 ],
									"bordercolor" : [ 0.0, 0.019608, 0.078431, 0.37 ],
									"fontsize" : 11.0,
									"id" : "obj-8",
									"maxclass" : "live.text",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 24.999999999999993, 101.0, 49.999999999999986, 23.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 74.0, 3.676516532897949, 44.0, 14.764644622802734 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_defer" : 1,
											"parameter_enum" : [ "val1", "val2" ],
											"parameter_initial" : [ 0.0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "startPlayBtn",
											"parameter_mmax" : 1,
											"parameter_shortname" : "startPlay",
											"parameter_type" : 2
										}

									}
,
									"text" : "start",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"texton" : "stop",
									"varname" : "startPlayBtn"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 10.0,
									"id" : "obj-79",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 175.999999999999886, 166.0, 49.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 79.0, 48.6875, 39.0, 18.0 ],
									"text" : "speed:",
									"textcolor" : [ 0.129411764705882, 0.168627450980392, 0.509803921568627, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-78",
									"maxclass" : "ezdac~",
									"numinlets" : 2,
									"numoutlets" : 0,
									"patching_rect" : [ 221.0, 719.5, 45.0, 45.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-77",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 79.25, 399.75, 59.0, 22.0 ],
									"text" : "gate~ 1 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-61",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 207.5, 523.845901000000026, 102.0, 22.0 ],
									"text" : "slide~ 2205 2205"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-62",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 207.5, 490.003799000000072, 114.0, 22.0 ],
									"text" : "scale~ -1. 1. 0. 0.25"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-63",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 99.25, 439.5, 48.0, 22.0 ],
									"text" : "cycle~"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-44",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 35.0, 439.5, 48.0, 22.0 ],
									"text" : "cycle~"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-64",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 79.25, 493.723098000000164, 39.0, 22.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-65",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 15.0, 493.723098000000164, 39.0, 22.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-50",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 225.5, 568.0, 52.0, 22.0 ],
									"text" : "+~ 0.75"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-68",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 207.5, 423.845901000000026, 43.0, 23.0 ],
									"text" : "$1 20"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-69",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 207.5, 453.845901000000026, 36.0, 23.0 ],
									"text" : "line~"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.745098039215686, 0.745098039215686, 0.745098039215686, 1.0 ],
									"fontsize" : 9.0,
									"format" : 6,
									"id" : "obj-70",
									"maxclass" : "flonum",
									"maximum" : 1.0,
									"minimum" : -1.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 280.0625, 372.5, 47.0, 19.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 44.13552900000002, 68.0, 32.13552900000002, 19.0 ],
									"textcolor" : [ 0.129411764705882, 0.168627450980392, 0.509803921568627, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"activedialcolor" : [ 0.129411764705882, 0.168627450980392, 0.509803921568627, 1.0 ],
									"activefgdialcolor" : [ 0.396078431372549, 0.403921568627451, 0.4, 1.0 ],
									"activeneedlecolor" : [ 0.015686274509804, 0.0, 0.0, 0.701960784313725 ],
									"bordercolor" : [ 0.458823529411765, 0.368627450980392, 0.368627450980392, 1.0 ],
									"focusbordercolor" : [ 0.643137254901961, 0.643137254901961, 0.643137254901961, 1.0 ],
									"fontface" : 1,
									"id" : "obj-13",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 207.5, 358.0, 27.0, 54.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 44.13552900000002, 9.882322311401367, 27.0, 54.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_initial" : [ 0.0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "bufgrPan[2]",
											"parameter_mmax" : 1.0,
											"parameter_mmin" : -1.0,
											"parameter_shortname" : "Pan",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"textcolor" : [ 0.129411764705882, 0.168627450980392, 0.509803921568627, 1.0 ],
									"triangle" : 1,
									"varname" : "pan"
								}

							}
, 							{
								"box" : 								{
									"coldcolor" : [ 0.756862745098039, 0.996078431372549, 0.996078431372549, 1.0 ],
									"id" : "obj-72",
									"lastchannelcount" : 0,
									"maxclass" : "live.gain~",
									"numinlets" : 2,
									"numoutlets" : 5,
									"outlettype" : [ "signal", "signal", "", "float", "list" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 35.0, 568.0, 47.0, 132.0 ],
									"presentation" : 1,
									"presentation_rect" : [ -2.93223549999999, 16.375, 46.0, 77.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "bufGrooveGain[1]",
											"parameter_mmax" : 6.0,
											"parameter_mmin" : -70.0,
											"parameter_shortname" : "gain",
											"parameter_type" : 0,
											"parameter_unitstyle" : 4
										}

									}
,
									"slidercolor" : [ 0.129411764705882, 0.168627450980392, 0.509803921568627, 1.0 ],
									"textcolor" : [ 0.756862745098039, 0.996078431372549, 0.996078431372549, 1.0 ],
									"tribordercolor" : [ 0.129411764705882, 0.168627450980392, 0.509803921568627, 1.0 ],
									"tricolor" : [ 0.898039215686275, 0.898039215686275, 0.898039215686275, 1.0 ],
									"trioncolor" : [ 0.756862745098039, 0.996078431372549, 0.996078431372549, 1.0 ],
									"varname" : "bufGrooveGain"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-73",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 15.0, 243.5, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-74",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 15.0, 284.5, 29.5, 22.0 ],
									"text" : "1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 15.0, 399.75, 59.0, 22.0 ],
									"text" : "gate~ 1 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 15.0, 366.5, 32.5, 22.0 ],
									"text" : "!= 1"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.435294117647059, 0.568627450980392, 0.698039215686274, 1.0 ],
									"activebgoncolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
									"activetextcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
									"activetextoncolor" : [ 0.0, 0.019608, 0.078431, 1.0 ],
									"bgcolor" : [ 0.101961, 0.101961, 0.101961, 0.78 ],
									"bgoncolor" : [ 0.737254901960784, 0.737254901960784, 0.737254901960784, 1.0 ],
									"bordercolor" : [ 0.0, 0.019608, 0.078431, 0.37 ],
									"fontsize" : 11.0,
									"id" : "obj-76",
									"maxclass" : "live.text",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 15.0, 322.5, 49.999999999999986, 23.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 2.13552900000002, 0.617677688598633, 39.86447099999998, 14.764644622802734 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_defer" : 1,
											"parameter_enum" : [ "val1", "val2" ],
											"parameter_initial" : [ 0.0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "bufferMute[9]",
											"parameter_mmax" : 1,
											"parameter_shortname" : "mute",
											"parameter_type" : 2
										}

									}
,
									"text" : "mute",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"texton" : "mute",
									"varname" : "bufferMute"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-47",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 910.5, 361.0, 56.0, 22.0 ],
									"restore" : 									{
										"bufGrooveGain" : [ 0.0 ],
										"bufferMute" : [ 1.0 ],
										"bufgrWfMode" : [ 0.0 ],
										"mcgRange" : [ 1.0 ],
										"pan" : [ 0.0 ],
										"startPlayBtn" : [ 0.0 ],
										"stopPlayBtn" : [ 0.0 ]
									}
,
									"text" : "autopattr",
									"varname" : "u978009889"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 12.0,
									"id" : "obj-71",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 985.0, 332.0, 94.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 264.0, 0.117677688598633, 69.0, 20.0 ],
									"text" : "BufGroove",
									"textcolor" : [ 0.129411764705882, 0.168627450980392, 0.509803921568627, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-67",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 903.0, 303.0, 176.0, 20.0 ],
									"text" : "## ZS buffer groove ## "
								}

							}
, 							{
								"box" : 								{
									"comment" : "audio out right",
									"id" : "obj-43",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 88.25, 734.5, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "audio out left",
									"id" : "obj-42",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 24.999999999999993, 734.5, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 175.999999999999886, 118.0, 29.5, 22.0 ],
									"text" : "1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 175.999999999999886, 88.0, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"comment" : "file name",
									"id" : "obj-38",
									"index" : 4,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 582.499999999999886, 32.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 582.499999999999886, 118.0, 95.0, 22.0 ],
									"text" : "prepend replace"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.811764705882353, 0.843137254901961, 0.866666666666667, 1.0 ],
									"fontsize" : 9.0,
									"format" : 6,
									"id" : "obj-46",
									"maxclass" : "flonum",
									"maximum" : 100.0,
									"minimum" : -100.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 131.0, 166.0, 44.0, 19.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 79.0, 68.0, 37.0, 19.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"varname" : "mcgRange"
								}

							}
, 							{
								"box" : 								{
									"comment" : "play speed float",
									"id" : "obj-15",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 131.0, 29.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "stop bang",
									"id" : "obj-12",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 70.0, 29.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "start bang",
									"id" : "obj-5",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 15.0, 29.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-153",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 461.912078500000007, 356.5, 46.0, 22.0 ],
									"text" : "line $1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-94",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 370.912078500000007, 72.0, 79.0, 22.0 ],
									"text" : "snapshot~ 5"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"format" : 6,
									"id" : "obj-9",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 461.912078500000007, 328.5, 58.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"format" : 6,
									"id" : "obj-31",
									"maxclass" : "flonum",
									"maximum" : 1.0,
									"minimum" : 0.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 370.912078500000007, 118.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "float" ],
									"patching_rect" : [ 410.249999999999886, 197.0, 32.5, 22.0 ],
									"text" : "t b f"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-34",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "float" ],
									"patching_rect" : [ 472.662078500000007, 101.0, 32.5, 22.0 ],
									"text" : "t b f"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-137",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 472.662078500000007, 166.0, 43.0, 22.0 ],
									"text" : "abs 0."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 472.662078500000007, 139.0, 32.5, 22.0 ],
									"text" : "- 0."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-96",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 370.912078500000007, 245.0, 32.5, 22.0 ],
									"text" : "+ 0."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-89",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 370.912078500000007, 197.0, 32.5, 22.0 ],
									"text" : "* 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 646.999999999999886, 345.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 712.499999999999886, 345.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 9,
									"outlettype" : [ "float", "list", "float", "float", "float", "float", "float", "", "int" ],
									"patching_rect" : [ 646.999999999999886, 237.0, 103.0, 22.0 ],
									"text" : "info~ #1bufGr"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 10.0,
									"id" : "obj-22",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 363.0, 306.0, 49.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 169.637237548828125, 2.058838844299316, 39.0, 18.0 ],
									"text" : "mode:",
									"textcolor" : [ 0.129411764705882, 0.168627450980392, 0.509803921568627, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 356.637359500000002, 351.0, 86.0, 22.0 ],
									"text" : "prepend mode"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.129411764705882, 0.168627450980392, 0.509803921568627, 1.0 ],
									"annotation" : "Select the waveform window mode: loop or select",
									"bordercolor" : [ 0.129411764705882, 0.168627450980392, 0.509803921568627, 1.0 ],
									"focusbordercolor" : [ 0.572549, 0.615686, 0.658824, 1.0 ],
									"hltcolor" : [ 0.556863, 0.556863, 0.556863, 1.0 ],
									"hlttextcolor" : [ 0.898039215686275, 0.898039215686275, 0.898039215686275, 1.0 ],
									"id" : "obj-75",
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"parameter_mappable" : 0,
									"patching_rect" : [ 356.637359500000002, 332.0, 73.274719000000005, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 205.637237548828125, 3.558838844299316, 56.362762451171875, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "loop", "select" ],
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "bufgrWfMode[2]",
											"parameter_mmax" : 1,
											"parameter_shortname" : "mode",
											"parameter_type" : 2
										}

									}
,
									"textcolor" : [ 0.756862745098039, 0.996078431372549, 0.996078431372549, 1.0 ],
									"tricolor" : [ 0.898039215686275, 0.898039215686275, 0.898039215686275, 1.0 ],
									"varname" : "bufgrWfMode"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 588.999999999999886, 295.0, 65.0, 22.0 ],
									"text" : "mode loop"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 515.999999999999886, 254.0, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 515.999999999999886, 295.0, 82.0, 22.0 ],
									"text" : "set #1bufGr"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.0, 0.101960784313725, 1.0, 1.0 ],
									"buffername" : "#1bufGr",
									"gridcolor" : [ 0.733333333333333, 0.588235294117647, 0.827450980392157, 1.0 ],
									"id" : "obj-25",
									"maxclass" : "waveform~",
									"numinlets" : 5,
									"numoutlets" : 6,
									"outlettype" : [ "float", "float", "float", "float", "list", "" ],
									"patching_rect" : [ 515.999999999999886, 394.5, 281.0, 95.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 123.0, 22.0, 210.0, 71.375 ],
									"selectioncolor" : [ 1.0, 1.0, 0.172549019607843, 0.31 ],
									"setmode" : 2,
									"waveformcolor" : [ 0.87843137254902, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 757.5, 146.0, 162.0, 22.0 ],
									"text" : "replace UnionRose_b12.wav"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 70.0, 183.0, 31.0, 22.0 ],
									"text" : "stop"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 15.0, 183.0, 29.5, 22.0 ],
									"text" : "0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 131.0, 197.0, 41.0, 22.0 ],
									"text" : "sig~ 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 742.499999999999886, 118.0, 155.0, 22.0 ],
									"text" : "replace UnionRose_b1.wav"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "signal", "signal", "signal" ],
									"patching_rect" : [ 88.25, 243.5, 204.0, 22.0 ],
									"saved_object_attributes" : 									{
										"basictuning" : 440,
										"followglobaltempo" : 0,
										"formantcorrection" : 0,
										"loopend" : [ 23999.978154672571691, "ms" ],
										"loopstart" : [ 0.0, "ms" ],
										"mode" : "basic",
										"originallength" : [ 0.0, "ticks" ],
										"originaltempo" : 120.0,
										"phase" : [ 0.0, "ticks" ],
										"pitchcorrection" : 0,
										"quality" : "basic",
										"timestretch" : [ 1 ]
									}
,
									"text" : "groove~ #1bufGr 2 @timestretch 1"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.870588235294118, 0.819607843137255, 0.23921568627451, 1.0 ],
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 582.499999999999886, 192.0, 103.0, 22.0 ],
									"text" : "buffer~ #1bufGr"
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"grad1" : [ 0.756862745098039, 0.996078431372549, 0.996078431372549, 1.0 ],
									"grad2" : [ 0.2, 0.2, 0.2, 1.0 ],
									"id" : "obj-66",
									"maxclass" : "panel",
									"mode" : 1,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 903.0, 332.0, 71.0, 13.0 ],
									"presentation" : 1,
									"presentation_rect" : [ -2.93223549999999, 0.117677688598633, 335.93223549999999, 93.882322311401367 ],
									"proportion" : 0.5
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-137", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 0 ],
									"order" : 1,
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-70", 0 ],
									"order" : 0,
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-89", 1 ],
									"source" : [ "obj-137", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-153", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"order" : 1,
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-77", 0 ],
									"order" : 0,
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"midpoints" : [ 675.999999999999886, 219.0, 607.0, 219.0, 607.0, 271.0, 656.499999999999886, 271.0 ],
									"order" : 0,
									"source" : [ "obj-2", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"order" : 1,
									"source" : [ "obj-2", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"order" : 1,
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"midpoints" : [ 525.499999999999886, 279.0, 598.499999999999886, 279.0 ],
									"order" : 0,
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"midpoints" : [ 630.299999999999841, 501.0, 452.0, 501.0, 452.0, 231.0, 459.0, 231.0, 459.0, 135.0, 482.162078500000007, 135.0 ],
									"order" : 0,
									"source" : [ "obj-25", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"midpoints" : [ 630.299999999999841, 501.0, 453.0, 501.0, 453.0, 342.0, 453.0, 342.0, 453.0, 231.0, 453.0, 231.0, 453.0, 183.0, 419.749999999999886, 183.0 ],
									"order" : 1,
									"source" : [ "obj-25", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"midpoints" : [ 682.699999999999818, 501.0, 452.0, 501.0, 452.0, 231.0, 459.0, 231.0, 459.0, 96.0, 482.162078500000007, 96.0 ],
									"order" : 0,
									"source" : [ "obj-25", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 2 ],
									"midpoints" : [ 682.699999999999818, 546.0, 339.0, 546.0, 339.0, 230.0, 282.75, 230.0 ],
									"order" : 1,
									"source" : [ "obj-25", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"midpoints" : [ 630.299999999999841, 546.0, 339.0, 546.0, 339.0, 231.0, 190.25, 231.0 ],
									"order" : 2,
									"source" : [ "obj-25", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"midpoints" : [ 366.137359500000002, 429.0, 525.499999999999886, 429.0 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 3 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 2 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"midpoints" : [ 719.499999999999886, 285.0, 721.999999999999886, 285.0 ],
									"source" : [ "obj-3", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-89", 0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-96", 1 ],
									"source" : [ "obj-32", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-96", 0 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 1 ],
									"source" : [ "obj-34", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 1 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-77", 1 ],
									"source" : [ "obj-4", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-94", 0 ],
									"midpoints" : [ 282.75, 270.0, 357.0, 270.0, 357.0, 66.0, 380.412078500000007, 66.0 ],
									"source" : [ "obj-4", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 1 ],
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-63", 1 ],
									"midpoints" : [ 235.0, 618.0, 159.0, 618.0, 159.0, 435.0, 137.75, 435.0 ],
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 1 ],
									"midpoints" : [ 217.0, 596.0, 180.0, 596.0, 180.0, 427.0, 73.5, 427.0 ],
									"order" : 1,
									"source" : [ "obj-61", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"midpoints" : [ 217.0, 547.0, 235.0, 547.0 ],
									"order" : 0,
									"source" : [ "obj-61", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 0 ],
									"source" : [ "obj-62", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 1 ],
									"source" : [ "obj-63", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-72", 1 ],
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-72", 0 ],
									"source" : [ "obj-65", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-69", 0 ],
									"source" : [ "obj-68", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-62", 0 ],
									"source" : [ "obj-69", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-70", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"order" : 1,
									"source" : [ "obj-72", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"order" : 1,
									"source" : [ "obj-72", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-78", 1 ],
									"order" : 0,
									"source" : [ "obj-72", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-78", 0 ],
									"order" : 0,
									"source" : [ "obj-72", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-74", 0 ],
									"source" : [ "obj-73", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-76", 0 ],
									"source" : [ "obj-74", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-75", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-76", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"midpoints" : [ 88.75, 480.0, 88.75, 480.0 ],
									"source" : [ "obj-77", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-96", 0 ],
									"source" : [ "obj-89", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-153", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"source" : [ "obj-94", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 380.412078500000007, 291.0, 471.412078500000007, 291.0 ],
									"source" : [ "obj-96", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "maxscore.default.buttons",
								"default" : 								{
									"accentcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ]
					}
,
					"patching_rect" : [ 708.630444216247952, 810.5, 340.0, 98.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 410.0, 602.5, 335.0, 98.0 ],
					"varname" : "zsBufGroove4",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 530.0, 771.5, 135.0, 22.0 ],
					"text" : "UnionRose_b1.wav",
					"varname" : "b3File"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-29",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 423.0, 775.0, 50.0, 22.0 ],
					"varname" : "b3Speed"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 316.0, 775.0, 24.0, 24.0 ],
					"varname" : "b3Stop"
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
					"patching_rect" : [ 209.0, 771.5, 24.0, 24.0 ],
					"varname" : "b3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 514.0, 915.5, 68.0, 22.0 ],
					"text" : "send~ out2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-59",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 209.0, 915.5, 68.0, 22.0 ],
					"text" : "send~ out1"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "grb3" ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"embed" : 1,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-63",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "zsBufGroove-bp.maxpat",
					"numinlets" : 4,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 11,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 1525.0, 359.0, 1266.0, 805.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 582.499999999999886, 88.0, 83.0, 22.0 ],
									"restore" : [ "UnionRose_b2.wav" ],
									"saved_object_attributes" : 									{
										"parameter_enable" : 0,
										"parameter_mappable" : 0
									}
,
									"text" : "pattr fileName",
									"varname" : "fileName"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.435294117647059, 0.568627450980392, 0.698039215686274, 1.0 ],
									"activebgoncolor" : [ 0.996078431372549, 0.274509803921569, 0.274509803921569, 1.0 ],
									"activetextcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
									"activetextoncolor" : [ 0.0, 0.019608, 0.078431, 1.0 ],
									"bgcolor" : [ 0.101961, 0.101961, 0.101961, 0.78 ],
									"bgoncolor" : [ 0.737254901960784, 0.737254901960784, 0.737254901960784, 1.0 ],
									"bordercolor" : [ 0.0, 0.019608, 0.078431, 0.37 ],
									"fontsize" : 11.0,
									"id" : "obj-10",
									"maxclass" : "live.text",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 83.75, 101.0, 49.999999999999986, 23.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 120.0, 3.676516532897949, 44.0, 14.764644622802734 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_defer" : 1,
											"parameter_enum" : [ "val1", "val2" ],
											"parameter_initial" : [ 0.0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "stopPlayBtn[1]",
											"parameter_mmax" : 1,
											"parameter_shortname" : "stopPlay",
											"parameter_type" : 2
										}

									}
,
									"text" : "stop",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"texton" : "stop",
									"varname" : "stopPlayBtn"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.435294117647059, 0.568627450980392, 0.698039215686274, 1.0 ],
									"activebgoncolor" : [ 0.996078431372549, 0.274509803921569, 0.274509803921569, 1.0 ],
									"activetextcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
									"activetextoncolor" : [ 0.0, 0.019608, 0.078431, 1.0 ],
									"bgcolor" : [ 0.101961, 0.101961, 0.101961, 0.78 ],
									"bgoncolor" : [ 0.737254901960784, 0.737254901960784, 0.737254901960784, 1.0 ],
									"bordercolor" : [ 0.0, 0.019608, 0.078431, 0.37 ],
									"fontsize" : 11.0,
									"id" : "obj-8",
									"maxclass" : "live.text",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 24.999999999999993, 101.0, 49.999999999999986, 23.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 74.0, 3.676516532897949, 44.0, 14.764644622802734 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_defer" : 1,
											"parameter_enum" : [ "val1", "val2" ],
											"parameter_initial" : [ 0.0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "startPlayBtn[3]",
											"parameter_mmax" : 1,
											"parameter_shortname" : "startPlay",
											"parameter_type" : 2
										}

									}
,
									"text" : "start",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"texton" : "stop",
									"varname" : "startPlayBtn"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 10.0,
									"id" : "obj-79",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 175.999999999999886, 166.0, 49.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 79.0, 48.6875, 39.0, 18.0 ],
									"text" : "speed:",
									"textcolor" : [ 0.129411764705882, 0.168627450980392, 0.509803921568627, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-78",
									"maxclass" : "ezdac~",
									"numinlets" : 2,
									"numoutlets" : 0,
									"patching_rect" : [ 221.0, 719.5, 45.0, 45.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-77",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 79.25, 399.75, 59.0, 22.0 ],
									"text" : "gate~ 1 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-61",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 207.5, 523.845901000000026, 102.0, 22.0 ],
									"text" : "slide~ 2205 2205"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-62",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 207.5, 490.003799000000072, 114.0, 22.0 ],
									"text" : "scale~ -1. 1. 0. 0.25"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-63",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 99.25, 439.5, 48.0, 22.0 ],
									"text" : "cycle~"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-44",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 35.0, 439.5, 48.0, 22.0 ],
									"text" : "cycle~"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-64",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 79.25, 493.723098000000164, 39.0, 22.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-65",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 15.0, 493.723098000000164, 39.0, 22.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-50",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 225.5, 568.0, 52.0, 22.0 ],
									"text" : "+~ 0.75"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-68",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 207.5, 423.845901000000026, 43.0, 23.0 ],
									"text" : "$1 20"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-69",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 207.5, 453.845901000000026, 36.0, 23.0 ],
									"text" : "line~"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.745098039215686, 0.745098039215686, 0.745098039215686, 1.0 ],
									"fontsize" : 9.0,
									"format" : 6,
									"id" : "obj-70",
									"maxclass" : "flonum",
									"maximum" : 1.0,
									"minimum" : -1.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 280.0625, 372.5, 47.0, 19.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 44.13552900000002, 68.0, 32.13552900000002, 19.0 ],
									"textcolor" : [ 0.129411764705882, 0.168627450980392, 0.509803921568627, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"activedialcolor" : [ 0.129411764705882, 0.168627450980392, 0.509803921568627, 1.0 ],
									"activefgdialcolor" : [ 0.396078431372549, 0.403921568627451, 0.4, 1.0 ],
									"activeneedlecolor" : [ 0.015686274509804, 0.0, 0.0, 0.701960784313725 ],
									"bordercolor" : [ 0.458823529411765, 0.368627450980392, 0.368627450980392, 1.0 ],
									"focusbordercolor" : [ 0.643137254901961, 0.643137254901961, 0.643137254901961, 1.0 ],
									"fontface" : 1,
									"id" : "obj-13",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 207.5, 358.0, 27.0, 54.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 44.13552900000002, 9.882322311401367, 27.0, 54.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_initial" : [ 0.0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "bufgrPan[3]",
											"parameter_mmax" : 1.0,
											"parameter_mmin" : -1.0,
											"parameter_shortname" : "Pan",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"textcolor" : [ 0.129411764705882, 0.168627450980392, 0.509803921568627, 1.0 ],
									"triangle" : 1,
									"varname" : "pan"
								}

							}
, 							{
								"box" : 								{
									"coldcolor" : [ 0.756862745098039, 0.996078431372549, 0.996078431372549, 1.0 ],
									"id" : "obj-72",
									"lastchannelcount" : 0,
									"maxclass" : "live.gain~",
									"numinlets" : 2,
									"numoutlets" : 5,
									"outlettype" : [ "signal", "signal", "", "float", "list" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 35.0, 568.0, 47.0, 132.0 ],
									"presentation" : 1,
									"presentation_rect" : [ -2.93223549999999, 16.375, 46.0, 77.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "bufGrooveGain[2]",
											"parameter_mmax" : 6.0,
											"parameter_mmin" : -70.0,
											"parameter_shortname" : "gain",
											"parameter_type" : 0,
											"parameter_unitstyle" : 4
										}

									}
,
									"slidercolor" : [ 0.129411764705882, 0.168627450980392, 0.509803921568627, 1.0 ],
									"textcolor" : [ 0.756862745098039, 0.996078431372549, 0.996078431372549, 1.0 ],
									"tribordercolor" : [ 0.129411764705882, 0.168627450980392, 0.509803921568627, 1.0 ],
									"tricolor" : [ 0.898039215686275, 0.898039215686275, 0.898039215686275, 1.0 ],
									"trioncolor" : [ 0.756862745098039, 0.996078431372549, 0.996078431372549, 1.0 ],
									"varname" : "bufGrooveGain"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-73",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 15.0, 243.5, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-74",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 15.0, 284.5, 29.5, 22.0 ],
									"text" : "1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 15.0, 399.75, 59.0, 22.0 ],
									"text" : "gate~ 1 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 15.0, 366.5, 32.5, 22.0 ],
									"text" : "!= 1"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.435294117647059, 0.568627450980392, 0.698039215686274, 1.0 ],
									"activebgoncolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
									"activetextcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
									"activetextoncolor" : [ 0.0, 0.019608, 0.078431, 1.0 ],
									"bgcolor" : [ 0.101961, 0.101961, 0.101961, 0.78 ],
									"bgoncolor" : [ 0.737254901960784, 0.737254901960784, 0.737254901960784, 1.0 ],
									"bordercolor" : [ 0.0, 0.019608, 0.078431, 0.37 ],
									"fontsize" : 11.0,
									"id" : "obj-76",
									"maxclass" : "live.text",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 15.0, 322.5, 49.999999999999986, 23.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 2.13552900000002, 0.617677688598633, 39.86447099999998, 14.764644622802734 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_defer" : 1,
											"parameter_enum" : [ "val1", "val2" ],
											"parameter_initial" : [ 0.0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "bufferMute[10]",
											"parameter_mmax" : 1,
											"parameter_shortname" : "mute",
											"parameter_type" : 2
										}

									}
,
									"text" : "mute",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"texton" : "mute",
									"varname" : "bufferMute"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-47",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 910.5, 361.0, 56.0, 22.0 ],
									"restore" : 									{
										"bufGrooveGain" : [ 0.0 ],
										"bufferMute" : [ 1.0 ],
										"bufgrWfMode" : [ 0.0 ],
										"mcgRange" : [ 1.0 ],
										"pan" : [ 0.0 ],
										"startPlayBtn" : [ 0.0 ],
										"stopPlayBtn" : [ 0.0 ]
									}
,
									"text" : "autopattr",
									"varname" : "u978009889"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 12.0,
									"id" : "obj-71",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 985.0, 332.0, 94.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 264.0, 0.117677688598633, 69.0, 20.0 ],
									"text" : "BufGroove",
									"textcolor" : [ 0.129411764705882, 0.168627450980392, 0.509803921568627, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-67",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 903.0, 303.0, 176.0, 20.0 ],
									"text" : "## ZS buffer groove ## "
								}

							}
, 							{
								"box" : 								{
									"comment" : "audio out right",
									"id" : "obj-43",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 88.25, 734.5, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "audio out left",
									"id" : "obj-42",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 24.999999999999993, 734.5, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 175.999999999999886, 118.0, 29.5, 22.0 ],
									"text" : "1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 175.999999999999886, 88.0, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"comment" : "file name",
									"id" : "obj-38",
									"index" : 4,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 582.499999999999886, 32.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 582.499999999999886, 118.0, 95.0, 22.0 ],
									"text" : "prepend replace"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.811764705882353, 0.843137254901961, 0.866666666666667, 1.0 ],
									"fontsize" : 9.0,
									"format" : 6,
									"id" : "obj-46",
									"maxclass" : "flonum",
									"maximum" : 100.0,
									"minimum" : -100.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 131.0, 166.0, 44.0, 19.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 79.0, 68.0, 37.0, 19.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"varname" : "mcgRange"
								}

							}
, 							{
								"box" : 								{
									"comment" : "play speed float",
									"id" : "obj-15",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 131.0, 29.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "stop bang",
									"id" : "obj-12",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 70.0, 29.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "start bang",
									"id" : "obj-5",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 11.0, 29.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-153",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 461.912078500000007, 356.5, 46.0, 22.0 ],
									"text" : "line $1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-94",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 370.912078500000007, 72.0, 79.0, 22.0 ],
									"text" : "snapshot~ 5"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"format" : 6,
									"id" : "obj-9",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 461.912078500000007, 328.5, 58.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"format" : 6,
									"id" : "obj-31",
									"maxclass" : "flonum",
									"maximum" : 1.0,
									"minimum" : 0.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 370.912078500000007, 118.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "float" ],
									"patching_rect" : [ 410.249999999999886, 197.0, 32.5, 22.0 ],
									"text" : "t b f"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-34",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "float" ],
									"patching_rect" : [ 472.662078500000007, 101.0, 32.5, 22.0 ],
									"text" : "t b f"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-137",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 472.662078500000007, 166.0, 43.0, 22.0 ],
									"text" : "abs 0."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 472.662078500000007, 139.0, 32.5, 22.0 ],
									"text" : "- 0."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-96",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 370.912078500000007, 245.0, 32.5, 22.0 ],
									"text" : "+ 0."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-89",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 370.912078500000007, 197.0, 32.5, 22.0 ],
									"text" : "* 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 646.999999999999886, 345.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 712.499999999999886, 345.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 9,
									"outlettype" : [ "float", "list", "float", "float", "float", "float", "float", "", "int" ],
									"patching_rect" : [ 646.999999999999886, 237.0, 103.0, 22.0 ],
									"text" : "info~ #1bufGr"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 10.0,
									"id" : "obj-22",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 363.0, 306.0, 49.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 169.637237548828125, 2.058838844299316, 39.0, 18.0 ],
									"text" : "mode:",
									"textcolor" : [ 0.129411764705882, 0.168627450980392, 0.509803921568627, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 356.637359500000002, 351.0, 86.0, 22.0 ],
									"text" : "prepend mode"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.129411764705882, 0.168627450980392, 0.509803921568627, 1.0 ],
									"annotation" : "Select the waveform window mode: loop or select",
									"bordercolor" : [ 0.129411764705882, 0.168627450980392, 0.509803921568627, 1.0 ],
									"focusbordercolor" : [ 0.572549, 0.615686, 0.658824, 1.0 ],
									"hltcolor" : [ 0.556863, 0.556863, 0.556863, 1.0 ],
									"hlttextcolor" : [ 0.898039215686275, 0.898039215686275, 0.898039215686275, 1.0 ],
									"id" : "obj-75",
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"parameter_mappable" : 0,
									"patching_rect" : [ 356.637359500000002, 332.0, 73.274719000000005, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 205.637237548828125, 3.558838844299316, 56.362762451171875, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "loop", "select" ],
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "bufgrWfMode[3]",
											"parameter_mmax" : 1,
											"parameter_shortname" : "mode",
											"parameter_type" : 2
										}

									}
,
									"textcolor" : [ 0.756862745098039, 0.996078431372549, 0.996078431372549, 1.0 ],
									"tricolor" : [ 0.898039215686275, 0.898039215686275, 0.898039215686275, 1.0 ],
									"varname" : "bufgrWfMode"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 588.999999999999886, 295.0, 65.0, 22.0 ],
									"text" : "mode loop"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 515.999999999999886, 254.0, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 515.999999999999886, 295.0, 82.0, 22.0 ],
									"text" : "set #1bufGr"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.0, 0.101960784313725, 1.0, 1.0 ],
									"buffername" : "#1bufGr",
									"gridcolor" : [ 0.733333333333333, 0.588235294117647, 0.827450980392157, 1.0 ],
									"id" : "obj-25",
									"maxclass" : "waveform~",
									"numinlets" : 5,
									"numoutlets" : 6,
									"outlettype" : [ "float", "float", "float", "float", "list", "" ],
									"patching_rect" : [ 515.999999999999886, 394.5, 281.0, 95.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 123.0, 22.0, 210.0, 71.375 ],
									"selectioncolor" : [ 1.0, 1.0, 0.172549019607843, 0.31 ],
									"setmode" : 2,
									"waveformcolor" : [ 0.87843137254902, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 757.5, 146.0, 162.0, 22.0 ],
									"text" : "replace UnionRose_b12.wav"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 70.0, 183.0, 31.0, 22.0 ],
									"text" : "stop"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 15.0, 183.0, 29.5, 22.0 ],
									"text" : "0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 131.0, 197.0, 41.0, 22.0 ],
									"text" : "sig~ 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 742.499999999999886, 118.0, 155.0, 22.0 ],
									"text" : "replace UnionRose_b1.wav"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "signal", "signal", "signal" ],
									"patching_rect" : [ 88.25, 243.5, 204.0, 22.0 ],
									"saved_object_attributes" : 									{
										"basictuning" : 440,
										"followglobaltempo" : 0,
										"formantcorrection" : 0,
										"loopend" : [ 23999.978154672571691, "ms" ],
										"loopstart" : [ 0.0, "ms" ],
										"mode" : "basic",
										"originallength" : [ 23039.999577216804028, "ticks" ],
										"originaltempo" : 120.0,
										"phase" : [ 0.0, "ticks" ],
										"pitchcorrection" : 0,
										"quality" : "basic",
										"timestretch" : [ 1 ]
									}
,
									"text" : "groove~ #1bufGr 2 @timestretch 1"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.870588235294118, 0.819607843137255, 0.23921568627451, 1.0 ],
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 582.499999999999886, 192.0, 103.0, 22.0 ],
									"text" : "buffer~ #1bufGr"
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"grad1" : [ 0.756862745098039, 0.996078431372549, 0.996078431372549, 1.0 ],
									"grad2" : [ 0.2, 0.2, 0.2, 1.0 ],
									"id" : "obj-66",
									"maxclass" : "panel",
									"mode" : 1,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 903.0, 332.0, 71.0, 13.0 ],
									"presentation" : 1,
									"presentation_rect" : [ -2.93223549999999, 0.117677688598633, 335.93223549999999, 93.882322311401367 ],
									"proportion" : 0.5
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-137", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 0 ],
									"order" : 1,
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-70", 0 ],
									"order" : 0,
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-89", 1 ],
									"source" : [ "obj-137", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-153", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"order" : 1,
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-77", 0 ],
									"order" : 0,
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"midpoints" : [ 675.999999999999886, 219.0, 607.0, 219.0, 607.0, 271.0, 656.499999999999886, 271.0 ],
									"order" : 0,
									"source" : [ "obj-2", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"order" : 1,
									"source" : [ "obj-2", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"order" : 1,
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"midpoints" : [ 525.499999999999886, 279.0, 598.499999999999886, 279.0 ],
									"order" : 0,
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"midpoints" : [ 630.299999999999841, 501.0, 452.0, 501.0, 452.0, 231.0, 459.0, 231.0, 459.0, 135.0, 482.162078500000007, 135.0 ],
									"order" : 0,
									"source" : [ "obj-25", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"midpoints" : [ 630.299999999999841, 501.0, 453.0, 501.0, 453.0, 342.0, 453.0, 342.0, 453.0, 231.0, 453.0, 231.0, 453.0, 183.0, 419.749999999999886, 183.0 ],
									"order" : 1,
									"source" : [ "obj-25", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"midpoints" : [ 682.699999999999818, 501.0, 452.0, 501.0, 452.0, 231.0, 459.0, 231.0, 459.0, 96.0, 482.162078500000007, 96.0 ],
									"order" : 0,
									"source" : [ "obj-25", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 2 ],
									"midpoints" : [ 682.699999999999818, 546.0, 339.0, 546.0, 339.0, 230.0, 282.75, 230.0 ],
									"order" : 1,
									"source" : [ "obj-25", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"midpoints" : [ 630.299999999999841, 546.0, 339.0, 546.0, 339.0, 231.0, 190.25, 231.0 ],
									"order" : 2,
									"source" : [ "obj-25", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"midpoints" : [ 366.137359500000002, 429.0, 525.499999999999886, 429.0 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 3 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 2 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"midpoints" : [ 719.499999999999886, 285.0, 721.999999999999886, 285.0 ],
									"source" : [ "obj-3", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-89", 0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-96", 1 ],
									"source" : [ "obj-32", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-96", 0 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 1 ],
									"source" : [ "obj-34", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 1 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-77", 1 ],
									"source" : [ "obj-4", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-94", 0 ],
									"midpoints" : [ 282.75, 270.0, 357.0, 270.0, 357.0, 66.0, 380.412078500000007, 66.0 ],
									"source" : [ "obj-4", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 1 ],
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-63", 1 ],
									"midpoints" : [ 235.0, 618.0, 159.0, 618.0, 159.0, 435.0, 137.75, 435.0 ],
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 1 ],
									"midpoints" : [ 217.0, 596.0, 180.0, 596.0, 180.0, 427.0, 73.5, 427.0 ],
									"order" : 1,
									"source" : [ "obj-61", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"midpoints" : [ 217.0, 547.0, 235.0, 547.0 ],
									"order" : 0,
									"source" : [ "obj-61", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 0 ],
									"source" : [ "obj-62", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 1 ],
									"source" : [ "obj-63", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-72", 1 ],
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-72", 0 ],
									"source" : [ "obj-65", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-69", 0 ],
									"source" : [ "obj-68", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-62", 0 ],
									"source" : [ "obj-69", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-70", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"order" : 1,
									"source" : [ "obj-72", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"order" : 1,
									"source" : [ "obj-72", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-78", 1 ],
									"order" : 0,
									"source" : [ "obj-72", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-78", 0 ],
									"order" : 0,
									"source" : [ "obj-72", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-74", 0 ],
									"source" : [ "obj-73", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-76", 0 ],
									"source" : [ "obj-74", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-75", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-76", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"midpoints" : [ 88.75, 480.0, 88.75, 480.0 ],
									"source" : [ "obj-77", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-96", 0 ],
									"source" : [ "obj-89", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-153", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"source" : [ "obj-94", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 380.412078500000007, 291.0, 471.412078500000007, 291.0 ],
									"source" : [ "obj-96", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "maxscore.default.buttons",
								"default" : 								{
									"accentcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ]
					}
,
					"patching_rect" : [ 209.0, 810.5, 340.0, 95.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 22.0, 602.5, 336.0, 98.0 ],
					"varname" : "zsBufGroove3",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 656.0, 40.0, 38.0, 22.0 ],
					"text" : "int 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-81",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 541.630444216247952, 554.5, 149.0, 22.0 ],
					"text" : "UnionRose_c4.wav",
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
					"patching_rect" : [ 434.630444216247952, 558.0, 50.0, 22.0 ],
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
					"patching_rect" : [ 327.630444216247952, 558.0, 24.0, 24.0 ],
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
					"patching_rect" : [ 220.630444216247952, 554.5, 24.0, 24.0 ],
					"varname" : "b2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-94",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 525.630444216247952, 698.5, 68.0, 22.0 ],
					"text" : "send~ out2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-95",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 220.630444216247952, 698.5, 68.0, 22.0 ],
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
					"patching_rect" : [ 220.630444216247952, 593.5, 340.0, 98.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 410.0, 493.5, 335.0, 98.0 ],
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
					"patching_rect" : [ 541.630444216247952, 371.5, 135.0, 22.0 ],
					"text" : "UnionRose_c3.wav",
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
					"patching_rect" : [ 434.630444216247952, 375.0, 50.0, 22.0 ],
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
					"patching_rect" : [ 327.630444216247952, 375.0, 24.0, 24.0 ],
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
					"patching_rect" : [ 220.630444216247952, 371.5, 24.0, 24.0 ],
					"varname" : "b1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 525.630444216247952, 515.5, 68.0, 22.0 ],
					"text" : "send~ out2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 220.630444216247952, 515.5, 68.0, 22.0 ],
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
					"patching_rect" : [ 220.630444216247952, 410.5, 340.0, 97.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 22.0, 493.5, 336.0, 98.0 ],
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
					"patching_rect" : [ 1572.0, 342.5, 47.0, 22.0 ],
					"text" : "r grLen"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1579.0, 631.5, 49.0, 22.0 ],
					"text" : "s grLen"
				}

			}
, 			{
				"box" : 				{
					"dontreplace" : 1,
					"id" : "obj-40",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1037.630444216247952, 364.5, 116.0, 22.0 ],
					"varname" : "granulatorFile"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1242.0, 631.5, 68.0, 22.0 ],
					"text" : "send~ out2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 890.0, 631.5, 68.0, 22.0 ],
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
					"patching_rect" : [ 1074.0, 388.5, 606.0, 105.0 ],
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
					"numinlets" : 8,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "" ],
					"patching_rect" : [ 890.0, 505.75, 723.0, 119.5 ],
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
					"patching_rect" : [ 562.0, 89.000000000000014, 62.489420572916515, 20.0 ],
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
					"patching_rect" : [ 643.833333333333485, 267.0, 38.0, 22.0 ],
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
					"elementcolor" : [ 1.0, 0.0, 0.152941176470588, 1.0 ],
					"fgcolor" : [ 0.733333333333333, 0.588235294117647, 0.827450980392157, 1.0 ],
					"id" : "obj-37",
					"maxclass" : "incdec",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 735.498521731581263, 83.203659973762043, 16.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 29.0, 150.0390625, 30.0, 29.5 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.898039215686275, 0.898039215686275, 0.898039215686275, 1.0 ],
					"bgoncolor" : [ 0.756862745098039, 0.996078431372549, 0.996078431372549, 1.0 ],
					"fontface" : 1,
					"fontlink" : 1,
					"fontsize" : 12.0,
					"id" : "obj-33",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 694.93699829408115, 152.75101505347655, 46.673828125, 21.40625 ],
					"presentation" : 1,
					"presentation_rect" : [ 166.6630859375, 154.8359375, 46.673828125, 21.40625 ],
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
					"presentation_rect" : [ 66.056640625, 150.0390625, 90.0, 31.0 ]
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
					"linecount" : 3,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1323.0, 160.5, 55.0, 49.0 ],
					"text" : "UnionRose_c3.wav",
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
					"patching_rect" : [ 888.5, 0.203659973762058, 55.0, 22.0 ],
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
					"patching_rect" : [ 39.75, 598.0, 47.0, 136.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 753.0, 117.0, 47.0, 123.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_linknames" : 1,
							"parameter_longname" : "mcGain",
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
					"patching_rect" : [ 888.5, 27.203659973762058, 422.000000000000114, 107.0 ],
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
					"numinlets" : 7,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "multichannelsignal", "float" ],
					"patching_rect" : [ 883.0, 202.0, 433.0, 128.0 ],
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
							"parameter_linknames" : 1,
							"parameter_longname" : "gain",
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
						"client_rect" : [ 370, 411, 1605, 1045 ],
						"parameter_enable" : 0,
						"parameter_mappable" : 0,
						"storage_rect" : [ 130, 120, 1463, 1117 ]
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
						"PresetDecrement" : [ 0.0 ],
						"PresetIncrement" : [ 0.0 ],
						"b1" : [ 0.0 ],
						"b1Speed" : [ 0.0 ],
						"b1Stop" : [ 1.0 ],
						"b2" : [ 0.0 ],
						"b2Speed" : [ 0.0 ],
						"b2Stop" : [ 1.0 ],
						"b3" : [ 0.0 ],
						"b3Speed" : [ 0.0 ],
						"b3Stop" : [ 1.0 ],
						"b4" : [ 0.0 ],
						"b4Speed" : [ 0.0 ],
						"b4Stop" : [ 1.0 ],
						"gain" : [ 0.015748031496059 ],
						"granulatorCont" : [ 0.0 ],
						"granulatorContStop" : [ 0.0 ],
						"granulatorLine" : [ 0.0 ],
						"grooveCont" : [ 0.0 ],
						"grooveContStop" : [ 0.0 ],
						"mcGain" : [ -1.181102362204726 ],
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
					"presentation_rect" : [ 22.0, 120.0, 268.0, 72.25 ],
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
					"presentation_rect" : [ 0.0, 0.0, 809.0, 722.0 ],
					"proportion" : 0.5,
					"rounded" : 43
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
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
					"midpoints" : [ 791.130444216247952, 500.0, 1638.0, 500.0, 1638.0, 504.0, 1614.0, 504.0, 1614.0, 501.0, 1603.5, 501.0 ],
					"source" : [ "obj-103", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-112", 1 ],
					"source" : [ "obj-104", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 0 ],
					"source" : [ "obj-105", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 7 ],
					"source" : [ "obj-106", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 6 ],
					"source" : [ "obj-107", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 5 ],
					"source" : [ "obj-108", 0 ]
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
					"destination" : [ "obj-27", 2 ],
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
					"destination" : [ "obj-27", 1 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 3 ],
					"midpoints" : [ 1332.5, 189.0, 1099.5, 189.0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
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
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-27", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 3 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 2 ],
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
					"destination" : [ "obj-63", 1 ],
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
					"destination" : [ "obj-31", 2 ],
					"midpoints" : [ 1047.130444216247952, 483.0, 1071.0, 483.0, 1071.0, 492.0, 1100.64285714285711, 492.0 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
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
					"destination" : [ "obj-23", 1 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 3 ],
					"source" : [ "obj-5", 0 ]
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
					"destination" : [ "obj-48", 0 ],
					"source" : [ "obj-63", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"source" : [ "obj-63", 0 ]
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
					"destination" : [ "obj-100", 0 ],
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 0 ],
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
					"destination" : [ "obj-91", 0 ],
					"source" : [ "obj-80", 0 ]
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
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-91", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-92", 0 ]
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
 ],
		"parameters" : 		{
			"obj-17" : [ "b4", "b4", 0 ],
			"obj-23" : [ "gain", "gain", 0 ],
			"obj-27::obj-10" : [ "stopPlayBtn", "stopPlay", 0 ],
			"obj-27::obj-13" : [ "bufgrPan[2]", "Pan", 0 ],
			"obj-27::obj-72" : [ "bufGrooveGain[1]", "gain", 0 ],
			"obj-27::obj-75" : [ "bufgrWfMode[2]", "mode", 0 ],
			"obj-27::obj-76" : [ "bufferMute[9]", "mute", 0 ],
			"obj-27::obj-8" : [ "startPlayBtn", "startPlay", 0 ],
			"obj-3" : [ "presetNo", "preset", 0 ],
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
			"obj-36" : [ "panicBtn", "panic", 0 ],
			"obj-44" : [ "preset0", "preset0", 0 ],
			"obj-45" : [ "mcGain", "mc.gain", 0 ],
			"obj-50::obj-10" : [ "stopPlayBtn[2]", "stopPlay", 0 ],
			"obj-50::obj-13" : [ "bufgrPan", "Pan", 0 ],
			"obj-50::obj-72" : [ "bufGrooveGain[3]", "gain", 0 ],
			"obj-50::obj-75" : [ "bufgrWfMode", "mode", 0 ],
			"obj-50::obj-76" : [ "bufferMute", "mute", 0 ],
			"obj-50::obj-8" : [ "startPlayBtn[2]", "startPlay", 0 ],
			"obj-53::obj-171" : [ "mcgPlayCont", "playCont", 0 ],
			"obj-53::obj-182" : [ "mcgPlayLine", "playLine", 0 ],
			"obj-53::obj-35" : [ "mcgGain", "gain", 0 ],
			"obj-53::obj-38" : [ "mcgHarmonics", "harmonics", 0 ],
			"obj-53::obj-48" : [ "mcgMute", "mute", 0 ],
			"obj-53::obj-56" : [ "mcHarmIncrement", "harminc", 0 ],
			"obj-53::obj-60" : [ "mcModeDecrement", "modedec", 0 ],
			"obj-53::obj-61" : [ "mcModeIncrement", "modeinc", 0 ],
			"obj-53::obj-75" : [ "mcgWfMode", "mode", 0 ],
			"obj-53::obj-80" : [ "mcHarmonicDecrement", "harmdec", 0 ],
			"obj-63::obj-10" : [ "stopPlayBtn[1]", "stopPlay", 0 ],
			"obj-63::obj-13" : [ "bufgrPan[3]", "Pan", 0 ],
			"obj-63::obj-72" : [ "bufGrooveGain[2]", "gain", 0 ],
			"obj-63::obj-75" : [ "bufgrWfMode[3]", "mode", 0 ],
			"obj-63::obj-76" : [ "bufferMute[10]", "mute", 0 ],
			"obj-63::obj-8" : [ "startPlayBtn[3]", "startPlay", 0 ],
			"obj-66" : [ "PresetIncrement", "presetinc", 0 ],
			"obj-80" : [ "PresetDecrement", "presetdec", 0 ],
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
				"obj-27::obj-13" : 				{
					"parameter_longname" : "bufgrPan[2]"
				}
,
				"obj-27::obj-72" : 				{
					"parameter_longname" : "bufGrooveGain[1]"
				}
,
				"obj-27::obj-75" : 				{
					"parameter_longname" : "bufgrWfMode[2]"
				}
,
				"obj-27::obj-76" : 				{
					"parameter_longname" : "bufferMute[9]"
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
				"obj-50::obj-10" : 				{
					"parameter_linknames" : 1,
					"parameter_longname" : "stopPlayBtn[2]"
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
					"parameter_linknames" : 0,
					"parameter_longname" : "startPlayBtn[2]"
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
				"obj-53::obj-35" : 				{
					"parameter_linknames" : 1,
					"parameter_longname" : "mcgGain"
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
				"obj-53::obj-75" : 				{
					"parameter_linknames" : 1,
					"parameter_longname" : "mcgWfMode"
				}
,
				"obj-53::obj-80" : 				{
					"parameter_shortname" : "harmdec"
				}
,
				"obj-63::obj-10" : 				{
					"parameter_longname" : "stopPlayBtn[1]"
				}
,
				"obj-63::obj-13" : 				{
					"parameter_longname" : "bufgrPan[3]"
				}
,
				"obj-63::obj-72" : 				{
					"parameter_longname" : "bufGrooveGain[2]"
				}
,
				"obj-63::obj-75" : 				{
					"parameter_longname" : "bufgrWfMode[3]"
				}
,
				"obj-63::obj-76" : 				{
					"parameter_longname" : "bufferMute[10]"
				}
,
				"obj-63::obj-8" : 				{
					"parameter_linknames" : 0,
					"parameter_longname" : "startPlayBtn[3]"
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

			}

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
		"textcolor" : [ 0.733333333333333, 0.588235294117647, 0.827450980392157, 1.0 ],
		"textcolor_inverse" : [ 0.756862745098039, 0.996078431372549, 0.996078431372549, 1.0 ],
		"bgcolor" : [ 0.894117647058824, 0.894117647058824, 0.894117647058824, 1.0 ]
	}

}
