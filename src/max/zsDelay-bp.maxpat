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
		"rect" : [ 1498.0, 193.0, 1285.0, 1093.0 ],
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
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-62",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 640.880157000000054, 492.885497999999984, 41.0, 22.0 ],
					"text" : "$1 20"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-63",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 640.880157000000054, 522.385497999999984, 46.0, 22.0 ],
					"text" : "line 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-60",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 304.880156999999997, 499.385498000000098, 41.0, 22.0 ],
					"text" : "$1 20"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-61",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 304.880156999999997, 523.885498000000098, 46.0, 22.0 ],
					"text" : "line 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-59",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 516.130157000000054, 884.754272000000014, 75.25, 22.0 ],
					"text" : "gate~ 1 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-58",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 167.130156999999997, 879.754272000000014, 75.25, 22.0 ],
					"text" : "gate~ 1 1"
				}

			}
, 			{
				"box" : 				{
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
					"patching_rect" : [ 64.130156999999997, 759.154113999999936, 49.999999999999986, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 3.911956344726491, 1.0, 39.86447099999998, 14.764644622802734 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_defer" : 1,
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_initial" : [ 0.0 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "delayMute",
							"parameter_mmax" : 1,
							"parameter_shortname" : "mute",
							"parameter_type" : 2
						}

					}
,
					"text" : "mute",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"texton" : "mute",
					"varname" : "delayMute"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-57",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 64.130156999999997, 809.154113999999936, 32.5, 22.0 ],
					"text" : "!= 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-46",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 479.880157000000054, 675.533264000000031, 41.0, 22.0 ],
					"text" : "$1 20"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 479.880157000000054, 705.033264000000031, 46.0, 22.0 ],
					"text" : "line 0."
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 0.129411764705882, 0.168627450980392, 0.509803921568627, 1.0 ],
					"activefgdialcolor" : [ 0.898039215686275, 0.898039215686275, 0.898039215686275, 1.0 ],
					"activeneedlecolor" : [ 0.27843137254902, 0.83921568627451, 1.0, 1.0 ],
					"bordercolor" : [ 0.458823529411765, 0.368627450980392, 0.368627450980392, 1.0 ],
					"focusbordercolor" : [ 0.643137254901961, 0.643137254901961, 0.643137254901961, 1.0 ],
					"fontface" : 1,
					"id" : "obj-51",
					"maxclass" : "live.dial",
					"needlecolor" : [ 0.27843137254902, 0.83921568627451, 1.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 479.880157000000054, 600.910888999999997, 44.0, 48.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 182.13552900000002, 68.89422607421875, 46.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_exponent" : 0.5,
							"parameter_initial" : [ 1.0 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "delayOutput",
							"parameter_mmax" : 5.0,
							"parameter_shortname" : "out",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"textcolor" : [ 0.87843137254902, 1.0, 1.0, 1.0 ],
					"varname" : "delayOutput"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 494.0, 154.5, 41.0, 22.0 ],
					"text" : "dbtoa"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-14",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 494.0, 185.533264000000003, 41.0, 22.0 ],
					"text" : "$1 20"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 494.0, 215.033264000000031, 46.0, 22.0 ],
					"text" : "line 0."
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"coldcolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
					"hotcolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
					"id" : "obj-7",
					"maxclass" : "meter~",
					"nhotleds" : 0,
					"ntepidleds" : 0,
					"numinlets" : 1,
					"numleds" : 20,
					"numoutlets" : 1,
					"nwarmleds" : 0,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 639.380157000000054, 798.033264000000031, 12.0, 91.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 238.044754028320312, 23.953064918518052, 12.0, 92.988096237182617 ],
					"tepidcolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
					"warmcolor" : [ 0.278431, 0.839216, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"coldcolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
					"hotcolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
					"id" : "obj-9",
					"maxclass" : "meter~",
					"nhotleds" : 0,
					"ntepidleds" : 0,
					"numinlets" : 1,
					"numleds" : 20,
					"numoutlets" : 1,
					"nwarmleds" : 0,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 274.75, 789.254272000000128, 12.0, 91.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 226.044754028320312, 23.953064918518052, 12.0, 92.988096237182617 ],
					"tepidcolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
					"warmcolor" : [ 0.278431, 0.839216, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 0.129411764705882, 0.168627450980392, 0.509803921568627, 1.0 ],
					"activefgdialcolor" : [ 0.396078431372549, 0.403921568627451, 0.4, 1.0 ],
					"activeneedlecolor" : [ 0.015686274509804, 0.0, 0.0, 0.701960784313725 ],
					"bordercolor" : [ 0.458823529411765, 0.368627450980392, 0.368627450980392, 1.0 ],
					"focusbordercolor" : [ 0.643137254901961, 0.643137254901961, 0.643137254901961, 1.0 ],
					"fontface" : 1,
					"id" : "obj-1",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 494.0, 85.910888999999997, 44.0, 48.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 182.13552900000002, 18.89422607421875, 46.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_exponent" : 0.5,
							"parameter_initial" : [ 0.0 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "delayInput",
							"parameter_mmax" : 0.0,
							"parameter_mmin" : -72.0,
							"parameter_shortname" : "in",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"textcolor" : [ 0.129411764705882, 0.168627450980392, 0.509803921568627, 1.0 ],
					"varname" : "delayInput"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-55",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 367.911956344726491, 17.89422607421875, 61.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 121.077148655273447, 1.0, 34.223572655273529, 20.0 ],
					"text" : "right",
					"textcolor" : [ 0.129411764705882, 0.168627450980392, 0.509803921568627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-44",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 572.380157000000054, 755.754272000000014, 36.0, 22.0 ],
					"text" : "*~ 5."
				}

			}
, 			{
				"box" : 				{
					"comment" : "signal output 2",
					"id" : "obj-48",
					"index" : 2,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 516.130157000000054, 925.754272000000014, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Ableton Sans Bold Regular",
					"fontsize" : 9.0,
					"id" : "obj-49",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 448.88015699999994, 887.254272000000014, 54.0, 17.0 ],
					"text" : "Signal2",
					"textcolor" : [ 0.129411764705882, 0.168627450980392, 0.509803921568627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.898039215686275, 0.898039215686275, 0.898039215686275, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 8.0,
					"id" : "obj-27",
					"maxclass" : "number~",
					"mode" : 2,
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "float" ],
					"patching_rect" : [ 631.380157000000054, 365.910888999999997, 52.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 156.143218999999988, 1.0, 40.0, 17.0 ],
					"sig" : 0.0,
					"textcolor" : [ 0.129411764705882, 0.168627450980392, 0.509803921568627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 639.380157000000054, 119.0, 89.0, 20.0 ],
					"text" : "Feedback gain"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 716.380157000000054, 393.0, 29.5, 20.0 ],
					"text" : "*~ 0."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 716.380157000000054, 354.910888999999997, 124.0, 20.0 ],
					"text" : "rampsmooth~ 11025 882"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 716.380157000000054, 326.0, 37.0, 20.0 ],
					"text" : "+~ 0.5"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 716.380157000000054, 297.0, 38.0, 20.0 ],
					"text" : "!-~ 0.5"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 716.380157000000054, 263.910888999999997, 89.0, 20.0 ],
					"text" : "average~ 300 ms"
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 0.811764705882353, 0.843137254901961, 0.866666666666667, 1.0 ],
					"activefgdialcolor" : [ 0.811764705882353, 0.843137254901961, 0.866666666666667, 1.0 ],
					"activeneedlecolor" : [ 0.27843137254902, 0.83921568627451, 1.0, 1.0 ],
					"bordercolor" : [ 0.458823529411765, 0.368627450980392, 0.368627450980392, 1.0 ],
					"dialcolor" : [ 0.811764705882353, 0.843137254901961, 0.866666666666667, 1.0 ],
					"fgdialcolor" : [ 0.811764705882353, 0.843137254901961, 0.866666666666667, 1.0 ],
					"focusbordercolor" : [ 0.643137254901961, 0.643137254901961, 0.643137254901961, 1.0 ],
					"fontface" : 1,
					"id" : "obj-34",
					"maxclass" : "live.dial",
					"needlecolor" : [ 0.435294117647059, 0.568627450980392, 0.698039215686274, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 747.380157000000054, 565.88549799999987, 44.0, 48.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 145.143218999999988, 68.89422607421875, 27.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_exponent" : 5.0,
							"parameter_initial" : [ 20000.0 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "delayLPFR",
							"parameter_mmax" : 20000.0,
							"parameter_mmin" : 20.0,
							"parameter_shortname" : "LPF",
							"parameter_type" : 0,
							"parameter_unitstyle" : 3
						}

					}
,
					"textcolor" : [ 0.894117647058824, 0.894117647058824, 0.894117647058824, 1.0 ],
					"varname" : "delayLPFR"
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 0.811764705882353, 0.843137254901961, 0.866666666666667, 1.0 ],
					"activefgdialcolor" : [ 0.811764705882353, 0.843137254901961, 0.866666666666667, 1.0 ],
					"activeneedlecolor" : [ 0.27843137254902, 0.83921568627451, 1.0, 1.0 ],
					"bordercolor" : [ 0.458823529411765, 0.368627450980392, 0.368627450980392, 1.0 ],
					"dialcolor" : [ 0.811764705882353, 0.843137254901961, 0.866666666666667, 1.0 ],
					"fgdialcolor" : [ 0.811764705882353, 0.843137254901961, 0.866666666666667, 1.0 ],
					"focusbordercolor" : [ 0.643137254901961, 0.643137254901961, 0.643137254901961, 1.0 ],
					"fontface" : 1,
					"id" : "obj-35",
					"maxclass" : "live.dial",
					"needlecolor" : [ 0.435294117647059, 0.568627450980392, 0.698039215686274, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 657.880157000000054, 565.88549799999987, 44.0, 48.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 108.077148655273447, 68.89422607421875, 27.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_exponent" : 5.0,
							"parameter_initial" : [ 20.0 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "delayHPFR",
							"parameter_mmax" : 20000.0,
							"parameter_mmin" : 20.0,
							"parameter_shortname" : "HPF",
							"parameter_type" : 0,
							"parameter_unitstyle" : 3
						}

					}
,
					"textcolor" : [ 0.894117647058824, 0.894117647058824, 0.894117647058824, 1.0 ],
					"varname" : "delayHPFR"
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 0.129411764705882, 0.168627450980392, 0.509803921568627, 1.0 ],
					"activefgdialcolor" : [ 0.396078431372549, 0.403921568627451, 0.4, 1.0 ],
					"activeneedlecolor" : [ 0.015686274509804, 0.0, 0.0, 0.701960784313725 ],
					"bordercolor" : [ 0.458823529411765, 0.368627450980392, 0.368627450980392, 1.0 ],
					"focusbordercolor" : [ 0.643137254901961, 0.643137254901961, 0.643137254901961, 1.0 ],
					"fontface" : 1,
					"id" : "obj-36",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 639.380157000000054, 436.910888999999997, 44.0, 48.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 108.077148655273447, 18.89422607421875, 27.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 200.0 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "delayTimeR",
							"parameter_mmax" : 4000.0,
							"parameter_shortname" : "time",
							"parameter_type" : 0,
							"parameter_unitstyle" : 2
						}

					}
,
					"textcolor" : [ 0.129411764705882, 0.168627450980392, 0.509803921568627, 1.0 ],
					"varname" : "delayTimeR"
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 0.129411764705882, 0.168627450980392, 0.509803921568627, 1.0 ],
					"activefgdialcolor" : [ 0.396078431372549, 0.403921568627451, 0.4, 1.0 ],
					"activeneedlecolor" : [ 0.015686274509804, 0.0, 0.0, 0.701960784313725 ],
					"bordercolor" : [ 0.458823529411765, 0.368627450980392, 0.368627450980392, 1.0 ],
					"focusbordercolor" : [ 0.643137254901961, 0.643137254901961, 0.643137254901961, 1.0 ],
					"fontface" : 1,
					"id" : "obj-37",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 651.322997999999984, 144.910888999999997, 44.0, 48.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 137.143218999999988, 18.89422607421875, 43.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_exponent" : 0.5,
							"parameter_initial" : [ -72.0 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "delayFeedbackR",
							"parameter_mmax" : 0.0,
							"parameter_mmin" : -72.0,
							"parameter_shortname" : "feedback",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"textcolor" : [ 0.129411764705882, 0.168627450980392, 0.509803921568627, 1.0 ],
					"varname" : "delayFeedbackR"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Ableton Sans Bold Regular",
					"fontsize" : 10.0,
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 568.380157000000054, 249.533264000000003, 37.0, 20.0 ],
					"text" : "*~ 0.2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 651.322997999999984, 240.533264000000003, 36.0, 20.0 ],
					"text" : "dbtoa"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-40",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
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
						"rect" : [ 266.0, 155.0, 1212.0, 645.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 1,
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
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 352.0, 112.0, 38.0, 22.0 ],
									"text" : "- 100"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-9",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 247.0, 140.0, 150.0, 37.0 ],
									"text" : "make sure lower freq is always 100Hz below upper freq; otherwise cascade~ crashes"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 317.214293999999995, 96.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 174.714279000000005, 140.0, 64.0, 22.0 ],
									"text" : "minimum"
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
									"outlettype" : [ "" ],
									"patching_rect" : [ 174.714279000000005, 190.0, 305.0, 22.0 ],
									"text" : "pak f f"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-1",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "dictionary" ],
									"patching_rect" : [ 174.714279000000005, 335.0, 183.0, 52.0 ],
									"text" : "filterdesign @order 4 @response bandpass @frequency 4000. 10000."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"format" : 6,
									"id" : "obj-15",
									"maxclass" : "flonum",
									"maximum" : 30000.0,
									"minimum" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 174.714279000000005, 96.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-5",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 174.714279000000005, 244.0, 97.0, 22.0 ],
									"text" : "frequency $1 $2"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-2",
									"maxclass" : "number",
									"maximum" : 30000,
									"minimum" : 10,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 460.714202999999998, 96.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 26.0, 551.0, 298.0, 22.0 ],
									"text" : "cascade~"
								}

							}
, 							{
								"box" : 								{
									"comment" : "high pass ƒ",
									"id" : "obj-55",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 174.714279000000005, 19.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "low pass ƒ",
									"id" : "obj-52",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 460.714202999999998, 19.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-41",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 27.0, 726.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "signal",
									"id" : "obj-35",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 26.0, 19.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-18", 0 ],
									"watchpoint_flags" : 1,
									"watchpoint_id" : 11
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 1 ],
									"order" : 0,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"order" : 1,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"order" : 2,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-3", 0 ],
									"watchpoint_flags" : 1,
									"watchpoint_id" : 12
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 1 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 568.380157000000054, 649.798461999999972, 198.0, 20.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p filter"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 568.380157000000054, 559.885497999999984, 70.0, 20.0 ],
					"text" : "tapout~ 125."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-43",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "tapconnect" ],
					"patching_rect" : [ 568.380157000000054, 428.910888999999997, 63.0, 20.0 ],
					"text" : "tapin~ 4000"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.898039215686275, 0.898039215686275, 0.898039215686275, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 8.0,
					"id" : "obj-99",
					"maxclass" : "number~",
					"mode" : 2,
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "float" ],
					"patching_rect" : [ 251.0, 354.910888999999997, 52.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 75.380156999999997, 1.0, 40.696992000000002, 17.0 ],
					"sig" : 0.0,
					"textcolor" : [ 0.129411764705882, 0.168627450980392, 0.509803921568627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-92",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 165.322997999999984, 122.910888999999997, 89.0, 20.0 ],
					"text" : "Feedback gain"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 74.380156999999997, 389.0, 29.5, 20.0 ],
					"text" : "*~ 0."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 74.380156999999997, 350.910888999999997, 124.0, 20.0 ],
					"text" : "rampsmooth~ 11025 882"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 74.380156999999997, 322.0, 37.0, 20.0 ],
					"text" : "+~ 0.5"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 74.380156999999997, 293.0, 38.0, 20.0 ],
					"text" : "!-~ 0.5"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 74.380156999999997, 259.910888999999997, 89.0, 20.0 ],
					"text" : "average~ 300 ms"
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 0.129411764705882, 0.168627450980392, 0.509803921568627, 1.0 ],
					"activefgdialcolor" : [ 0.811764705882353, 0.843137254901961, 0.866666666666667, 1.0 ],
					"activeneedlecolor" : [ 0.27843137254902, 0.83921568627451, 1.0, 1.0 ],
					"bordercolor" : [ 0.458823529411765, 0.368627450980392, 0.368627450980392, 1.0 ],
					"fgdialcolor" : [ 0.811764705882353, 0.843137254901961, 0.866666666666667, 1.0 ],
					"focusbordercolor" : [ 0.643137254901961, 0.643137254901961, 0.643137254901961, 1.0 ],
					"fontface" : 1,
					"id" : "obj-17",
					"maxclass" : "live.dial",
					"needlecolor" : [ 0.435294117647059, 0.568627450980392, 0.698039215686274, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 386.380156999999997, 571.910888999999997, 44.0, 48.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 61.523742672363255, 68.89422607421875, 27.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_exponent" : 5.0,
							"parameter_initial" : [ 20000.0 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "delayLPFL",
							"parameter_mmax" : 20000.0,
							"parameter_mmin" : 20.0,
							"parameter_shortname" : "LPF",
							"parameter_type" : 0,
							"parameter_unitstyle" : 3
						}

					}
,
					"textcolor" : [ 0.87843137254902, 1.0, 1.0, 1.0 ],
					"varname" : "delayLPFL"
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 0.129411764705882, 0.168627450980392, 0.509803921568627, 1.0 ],
					"activefgdialcolor" : [ 0.811764705882353, 0.843137254901961, 0.866666666666667, 1.0 ],
					"activeneedlecolor" : [ 0.27843137254902, 0.83921568627451, 1.0, 1.0 ],
					"bordercolor" : [ 0.458823529411765, 0.368627450980392, 0.368627450980392, 1.0 ],
					"fgdialcolor" : [ 0.811764705882353, 0.843137254901961, 0.866666666666667, 1.0 ],
					"focusbordercolor" : [ 0.643137254901961, 0.643137254901961, 0.643137254901961, 1.0 ],
					"fontface" : 1,
					"id" : "obj-15",
					"maxclass" : "live.dial",
					"needlecolor" : [ 0.435294117647059, 0.568627450980392, 0.698039215686274, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 304.880156999999997, 571.910888999999997, 44.0, 48.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 26.13552900000002, 68.89422607421875, 27.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_exponent" : 5.0,
							"parameter_initial" : [ 20.0 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "delayHPFL",
							"parameter_mmax" : 20000.0,
							"parameter_mmin" : 20.0,
							"parameter_shortname" : "HPF",
							"parameter_type" : 0,
							"parameter_unitstyle" : 3
						}

					}
,
					"textcolor" : [ 0.87843137254902, 1.0, 1.0, 1.0 ],
					"varname" : "delayHPFL"
				}

			}
, 			{
				"box" : 				{
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
					"patching_rect" : [ 304.880156999999997, 436.910888999999997, 44.0, 48.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 26.13552900000002, 18.89422607421875, 27.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 200.0 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "delayTimeL",
							"parameter_mmax" : 4000.0,
							"parameter_shortname" : "time",
							"parameter_type" : 0,
							"parameter_unitstyle" : 2
						}

					}
,
					"textcolor" : [ 0.129411764705882, 0.168627450980392, 0.509803921568627, 1.0 ],
					"varname" : "delayTimeL"
				}

			}
, 			{
				"box" : 				{
					"comment" : "signal input 2",
					"id" : "obj-3",
					"index" : 2,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 568.380157000000054, 90.754272000000014, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 0.129411764705882, 0.168627450980392, 0.509803921568627, 1.0 ],
					"activefgdialcolor" : [ 0.396078431372549, 0.403921568627451, 0.4, 1.0 ],
					"activeneedlecolor" : [ 0.015686274509804, 0.0, 0.0, 0.701960784313725 ],
					"bordercolor" : [ 0.458823529411765, 0.368627450980392, 0.368627450980392, 1.0 ],
					"focusbordercolor" : [ 0.643137254901961, 0.643137254901961, 0.643137254901961, 1.0 ],
					"fontface" : 1,
					"id" : "obj-20",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 165.322997999999984, 144.910888999999997, 44.0, 48.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 52.023742672363255, 18.89422607421875, 46.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_exponent" : 0.5,
							"parameter_initial" : [ -72.0 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "delayFeedbackL",
							"parameter_mmax" : 0.0,
							"parameter_mmin" : -72.0,
							"parameter_shortname" : "feedback",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"textcolor" : [ 0.129411764705882, 0.168627450980392, 0.509803921568627, 1.0 ],
					"varname" : "delayFeedbackL"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 223.380156999999997, 749.754272000000014, 36.0, 22.0 ],
					"text" : "*~ 5."
				}

			}
, 			{
				"box" : 				{
					"comment" : "signal output 1",
					"id" : "obj-10",
					"index" : 1,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 167.130156999999997, 925.754272000000014, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "signal input 1",
					"id" : "obj-24",
					"index" : 1,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 434.880156999999997, 90.754272000000014, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Ableton Sans Bold Regular",
					"fontsize" : 10.0,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 223.380156999999997, 240.533264000000003, 37.0, 20.0 ],
					"text" : "*~ 0.2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-519",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 165.322997999999984, 240.533264000000003, 36.0, 20.0 ],
					"text" : "dbtoa"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-958",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
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
						"rect" : [ 266.0, 155.0, 1212.0, 645.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 1,
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
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 352.0, 112.0, 38.0, 22.0 ],
									"text" : "- 100"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-9",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 247.0, 140.0, 150.0, 37.0 ],
									"text" : "make sure lower freq is always 100Hz below upper freq; otherwise cascade~ crashes"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 317.214293999999995, 96.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 174.714279000000005, 140.0, 64.0, 22.0 ],
									"text" : "minimum"
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
									"outlettype" : [ "" ],
									"patching_rect" : [ 174.714279000000005, 190.0, 305.0, 22.0 ],
									"text" : "pak f f"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-1",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "dictionary" ],
									"patching_rect" : [ 174.714279000000005, 335.0, 183.0, 52.0 ],
									"text" : "filterdesign @order 4 @response bandpass @frequency 4000. 10000."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"format" : 6,
									"id" : "obj-15",
									"maxclass" : "flonum",
									"maximum" : 30000.0,
									"minimum" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 174.714279000000005, 96.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-5",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 174.714279000000005, 244.0, 97.0, 22.0 ],
									"text" : "frequency $1 $2"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-2",
									"maxclass" : "number",
									"maximum" : 30000,
									"minimum" : 10,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 460.714202999999998, 96.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 26.0, 551.0, 298.0, 22.0 ],
									"text" : "cascade~"
								}

							}
, 							{
								"box" : 								{
									"comment" : "high pass ƒ",
									"id" : "obj-55",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 174.714279000000005, 19.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "low pass ƒ",
									"id" : "obj-52",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 460.714202999999998, 19.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-41",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 27.0, 726.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "signal",
									"id" : "obj-35",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 26.0, 19.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-18", 0 ],
									"watchpoint_flags" : 1,
									"watchpoint_id" : 6
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 1 ],
									"order" : 0,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"order" : 1,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"order" : 2,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-3", 0 ],
									"watchpoint_flags" : 1,
									"watchpoint_id" : 5
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 1 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 223.380156999999997, 649.798461999999972, 182.0, 20.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p filter"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-906",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 223.380156999999997, 555.885497999999984, 70.0, 20.0 ],
					"text" : "tapout~ 125."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-908",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "tapconnect" ],
					"patching_rect" : [ 223.380156999999997, 428.910888999999997, 63.0, 20.0 ],
					"text" : "tapin~ 4000"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Ableton Sans Bold Regular",
					"fontsize" : 9.0,
					"id" : "obj-8",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 246.380157000000054, 882.254272000000014, 47.0, 17.0 ],
					"text" : "Signal 1",
					"textcolor" : [ 0.129411764705882, 0.168627450980392, 0.509803921568627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 251.0, 10.5, 59.5, 22.0 ],
					"restore" : 					{
						"delayFeedbackL" : [ -18.16560827608923 ],
						"delayFeedbackR" : [ -18.546068108644604 ],
						"delayHPFL" : [ 21.49742432535075 ],
						"delayHPFR" : [ 1273.692938591639631 ],
						"delayInput" : [ 0.0 ],
						"delayLPFL" : [ 383.874111060486371 ],
						"delayLPFR" : [ 20000.0 ],
						"delayMute" : [ 0.0 ],
						"delayOutput" : [ 4.697125943168255 ],
						"delayTimeL" : [ 976.377952755909519 ],
						"delayTimeR" : [ 1858.267716535435966 ]
					}
,
					"text" : "autopattr",
					"varname" : "u687007762"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-45",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 165.322997999999984, 5.0, 61.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 197.380156999999997, 1.0, 60.0, 20.0 ],
					"text" : "ZS Delay",
					"textcolor" : [ 0.129411764705882, 0.168627450980392, 0.509803921568627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 31.0, 44.0, 231.0, 20.0 ],
					"text" : "## ZS Stereo delay ## "
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-54",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 445.380156999999997, 37.0, 61.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 48.023742672363255, 1.0, 34.223572655273529, 20.0 ],
					"text" : "left",
					"textcolor" : [ 0.129411764705882, 0.168627450980392, 0.509803921568627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.756862745098039, 0.996078431372549, 0.996078431372549, 0.18 ],
					"border" : 1,
					"bordercolor" : [ 0.125490196078431, 0.141176470588235, 0.141176470588235, 1.0 ],
					"id" : "obj-53",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 511.380157000000167, 17.89422607421875, 127.0, 41.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 18.911956344726491, 18.89422607421875, 80.335358982910293, 103.105773925781222 ],
					"proportion" : 0.5,
					"rounded" : 15,
					"shadow" : 2
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.756862745098039, 0.996078431372549, 0.996078431372549, 0.19 ],
					"border" : 1,
					"bordercolor" : [ 0.32156862745098, 0.356862745098039, 0.36078431372549, 0.32 ],
					"id" : "obj-56",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 367.911956344726491, 17.89422607421875, 127.0, 41.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 102.496917689453142, 18.89422607421875, 80.883239310546855, 103.105773925781222 ],
					"proportion" : 0.5,
					"rounded" : 15,
					"shadow" : 2
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"grad1" : [ 0.756862745098039, 0.996078431372549, 0.996078431372549, 1.0 ],
					"grad2" : [ 0.2, 0.2, 0.2, 1.0 ],
					"id" : "obj-41",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 31.0, 1.0, 127.0, 41.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.13552900000002, -3.10577392578125, 257.244627999999977, 125.105773925781222 ],
					"proportion" : 0.5
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 1 ],
					"order" : 1,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"order" : 0,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-958", 1 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-958", 2 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 1 ],
					"order" : 1,
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 1 ],
					"order" : 0,
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-908", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-519", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"order" : 1,
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 0 ],
					"midpoints" : [ 83.880156999999997, 345.0, 260.5, 345.0 ],
					"order" : 0,
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"midpoints" : [ 444.380156999999997, 196.143799000000001, 232.880156999999997, 196.143799000000001 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-908", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"order" : 1,
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"order" : 0,
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 2 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 1 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 1 ],
					"midpoints" : [ 660.822997999999984, 321.0, 743.880157000000054, 321.0 ],
					"order" : 1,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 1 ],
					"midpoints" : [ 660.822997999999984, 291.0, 744.880157000000054, 291.0 ],
					"order" : 0,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 1 ],
					"midpoints" : [ 577.880157000000054, 676.0, 847.0, 676.0, 847.0, 379.0, 736.380157000000054, 379.0 ],
					"order" : 0,
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"midpoints" : [ 577.880157000000054, 676.0, 866.0, 676.0, 866.0, 250.0, 725.880157000000054, 250.0 ],
					"order" : 1,
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"order" : 2,
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 1 ],
					"order" : 1,
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"order" : 0,
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 1 ],
					"order" : 1,
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 1 ],
					"order" : 0,
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 1 ],
					"midpoints" : [ 174.822997999999984, 288.0, 114.0, 288.0, 114.0, 288.0, 102.880156999999997, 288.0 ],
					"order" : 0,
					"source" : [ "obj-519", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 1 ],
					"midpoints" : [ 174.822997999999984, 318.0, 101.880156999999997, 318.0 ],
					"order" : 1,
					"source" : [ "obj-519", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"order" : 1,
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"order" : 0,
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-906", 0 ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-958", 0 ],
					"source" : [ "obj-906", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-906", 0 ],
					"source" : [ "obj-908", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"order" : 0,
					"source" : [ "obj-958", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"midpoints" : [ 232.880156999999997, 672.0, 27.0, 672.0, 27.0, 246.0, 83.880156999999997, 246.0 ],
					"order" : 2,
					"source" : [ "obj-958", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 1 ],
					"midpoints" : [ 232.880156999999997, 672.0, 38.0, 672.0, 38.0, 375.0, 94.380156999999997, 375.0 ],
					"order" : 1,
					"source" : [ "obj-958", 0 ]
				}

			}
 ],
		"styles" : [ 			{
				"name" : "AudioStatus_Menu",
				"default" : 				{
					"bgfillcolor" : 					{
						"type" : "color",
						"color" : [ 0.294118, 0.313726, 0.337255, 1 ],
						"color1" : [ 0.454902, 0.462745, 0.482353, 0.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
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
 ]
	}

}
