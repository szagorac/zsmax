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
		"rect" : [ 302.0, 189.0, 962.0, 964.0 ],
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
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-6",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "zsPlayCtrl-bp.maxpat",
					"numinlets" : 6,
					"numoutlets" : 4,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 260.0, 432.0, 602.0, 105.0 ],
					"varname" : "zsPlayCtrl-bp",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.462745098039216, 0.250980392156863, 0.603921568627451, 1.0 ],
					"fontname" : "Osaka",
					"fontsize" : 12.0,
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 843.0, 379.5, 66.0, 23.0 ],
					"text" : "r mcb2len"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.462745098039216, 0.250980392156863, 0.603921568627451, 1.0 ],
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 843.0, 695.5, 63.0, 22.0 ],
					"text" : "s mcb2len"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 83.0, 108.0, 55.0, 22.0 ],
					"text" : "jongly.aif"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 182.999999999999886, 716.5, 45.0, 111.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "live.gain~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 177.999999999999886, 855.5, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-1",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "zsGranulator-bp.maxpat",
					"numinlets" : 5,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "" ],
					"patching_rect" : [ 140.999999999999886, 556.5, 721.000000000000114, 124.5 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.462745098039216, 0.250980392156863, 0.603921568627451, 1.0 ],
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 563.899999999999864, 334.5, 63.0, 22.0 ],
					"text" : "s mcb1len"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 69.0, 158.0, 55.0, 22.0 ],
					"text" : "anton.aif"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "mc.ezdac~",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 69.000000000000114, 855.5, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"lastchannelcount" : 2,
					"maxclass" : "mc.live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "multichannelsignal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 69.0, 723.5, 59.0, 109.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ -40 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "mc.live.gain~[1]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "mc.live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "mc.live.gain~[1]"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-26",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "zsMcGroove-bp.maxpat",
					"numinlets" : 4,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "multichannelsignal", "float" ],
					"patching_rect" : [ 156.999999999999886, 208.5, 425.899999999999977, 124.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.462745098039216, 0.250980392156863, 0.603921568627451, 1.0 ],
					"fontname" : "Osaka",
					"fontsize" : 12.0,
					"id" : "obj-61",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 156.999999999999886, 39.5, 66.0, 23.0 ],
					"text" : "r mcb1len"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-57",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "zsGrvCtrl-bp.maxpat",
					"numinlets" : 10,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "int" ],
					"patching_rect" : [ 156.999999999999886, 69.5, 422.0, 121.0 ],
					"varname" : "zsGrooveControl-bp",
					"viewvisibility" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 1 ],
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"midpoints" : [ 150.499999999999886, 708.0, 192.499999999999886, 708.0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-1", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"midpoints" : [ 166.499999999999886, 360.0, 78.5, 360.0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-26", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 1 ],
					"source" : [ "obj-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"order" : 1,
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 1 ],
					"order" : 0,
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 1 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 3 ],
					"source" : [ "obj-57", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 2 ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 4 ],
					"source" : [ "obj-6", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 3 ],
					"source" : [ "obj-6", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 2 ],
					"source" : [ "obj-6", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 1 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 3 ],
					"source" : [ "obj-7", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-1::obj-155" : [ "SpectraLFOShape[4]", "Shape", 0 ],
			"obj-1::obj-6" : [ "zsgGain", "gain", 0 ],
			"obj-1::obj-64" : [ "zsgrpan", "zsgrpan", 0 ],
			"obj-1::obj-67" : [ "mcgMute[1]", "mute", 0 ],
			"obj-26::obj-35" : [ "mcgGain", "gain", 0 ],
			"obj-26::obj-38" : [ "mcgHarmonics", "harmonics", 0 ],
			"obj-26::obj-48" : [ "mcgMute", "mute", 0 ],
			"obj-26::obj-75" : [ "mcgWfMode", "mode", 0 ],
			"obj-3" : [ "live.gain~", "live.gain~", 0 ],
			"obj-36" : [ "mc.live.gain~[1]", "mc.live.gain~", 0 ],
			"obj-57::obj-13::obj-12" : [ "Mute[3]", "Mute", 0 ],
			"obj-57::obj-13::obj-13" : [ "Mod[1]", "Mod", 0 ],
			"obj-57::obj-13::obj-20" : [ "Frequency[3]", "Freq", 0 ],
			"obj-57::obj-13::obj-75" : [ "SpectraLFOShape[3]", "Shape", 0 ],
			"obj-57::obj-17" : [ "modifyPosition", "mutepos", 0 ],
			"obj-57::obj-20" : [ "LFOMod", "LFOMod", 0 ],
			"obj-57::obj-44" : [ "modifySize", "modsize", 0 ],
			"obj-57::obj-6::obj-12" : [ "Mute", "Mute", 0 ],
			"obj-57::obj-6::obj-20" : [ "Frequency", "Freq", 0 ],
			"obj-6::obj-168::obj-12" : [ "Mute[5]", "Mute", 0 ],
			"obj-6::obj-168::obj-20" : [ "Frequency[5]", "Freq", 0 ],
			"obj-6::obj-17" : [ "mutetePosition", "mutepos", 0 ],
			"obj-6::obj-20" : [ "LFOMod[1]", "LFOMod", 0 ],
			"obj-6::obj-21" : [ "modifySize[2]", "pcSelStartMute", 0 ],
			"obj-6::obj-32" : [ "pcSelStartMin", "pcSelStartMin", 0 ],
			"obj-6::obj-36" : [ "LFOSelStart", "StartMod", 0 ],
			"obj-6::obj-44" : [ "modifySize[1]", "modsize", 0 ],
			"obj-6::obj-51::obj-12" : [ "Mute[6]", "Mute", 0 ],
			"obj-6::obj-51::obj-20" : [ "Frequency[6]", "Freq", 0 ],
			"obj-6::obj-61" : [ "modifySize[3]", "pcSelEndMute", 0 ],
			"obj-6::obj-79" : [ "LFOSelEnd", "EndMod", 0 ],
			"obj-6::obj-80::obj-12" : [ "Mute[4]", "Mute", 0 ],
			"obj-6::obj-80::obj-13" : [ "Mod[2]", "Mod", 0 ],
			"obj-6::obj-80::obj-20" : [ "Frequency[4]", "Freq", 0 ],
			"obj-6::obj-80::obj-75" : [ "SpectraLFOShape[5]", "Shape", 0 ],
			"obj-6::obj-88::obj-12" : [ "Mute[7]", "Mute", 0 ],
			"obj-6::obj-88::obj-20" : [ "Frequency[7]", "Freq", 0 ],
			"parameterbanks" : 			{

			}
,
			"parameter_overrides" : 			{
				"obj-1::obj-155" : 				{
					"parameter_invisible" : 0,
					"parameter_modmode" : 0,
					"parameter_range" : [ "continous", "selection", "external" ],
					"parameter_type" : 2
				}
,
				"obj-1::obj-67" : 				{
					"parameter_longname" : "mcgMute[1]"
				}
,
				"obj-57::obj-17" : 				{
					"parameter_longname" : "modifyPosition"
				}
,
				"obj-6::obj-168::obj-12" : 				{
					"parameter_longname" : "Mute[5]"
				}
,
				"obj-6::obj-168::obj-20" : 				{
					"parameter_longname" : "Frequency[5]"
				}
,
				"obj-6::obj-20" : 				{
					"parameter_longname" : "LFOMod[1]"
				}
,
				"obj-6::obj-21" : 				{
					"parameter_longname" : "modifySize[2]"
				}
,
				"obj-6::obj-44" : 				{
					"parameter_longname" : "modifySize[1]"
				}
,
				"obj-6::obj-51::obj-12" : 				{
					"parameter_longname" : "Mute[6]"
				}
,
				"obj-6::obj-51::obj-20" : 				{
					"parameter_longname" : "Frequency[6]"
				}
,
				"obj-6::obj-61" : 				{
					"parameter_longname" : "modifySize[3]"
				}
,
				"obj-6::obj-80::obj-12" : 				{
					"parameter_longname" : "Mute[4]"
				}
,
				"obj-6::obj-80::obj-13" : 				{
					"parameter_longname" : "Mod[2]"
				}
,
				"obj-6::obj-80::obj-20" : 				{
					"parameter_longname" : "Frequency[4]"
				}
,
				"obj-6::obj-80::obj-75" : 				{
					"parameter_longname" : "SpectraLFOShape[5]"
				}
,
				"obj-6::obj-88::obj-12" : 				{
					"parameter_longname" : "Mute[7]"
				}
,
				"obj-6::obj-88::obj-20" : 				{
					"parameter_longname" : "Frequency[7]"
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "zsGrvCtrl-bp.maxpat",
				"bootpath" : "~/MyHome/Music/max/my",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "zsLFO-bp.maxpat",
				"bootpath" : "~/MyHome/Music/max/my",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "zsMLFO-bp.maxpat",
				"bootpath" : "~/MyHome/Music/max/my",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "zsMcGroove-bp.maxpat",
				"bootpath" : "~/MyHome/Music/max/my",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "zsGranulator-bp.maxpat",
				"bootpath" : "~/MyHome/Music/max/my",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "zsgran~.maxpat",
				"bootpath" : "~/MyHome/Music/max/my",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "zsPlayCtrl-bp.maxpat",
				"bootpath" : "~/MyHome/Music/max/my",
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
		"editing_bgcolor" : [ 0.898039215686275, 0.898039215686275, 0.898039215686275, 1.0 ]
	}

}
