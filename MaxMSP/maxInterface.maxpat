{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 133.0, 305.0, 956.0, 429.0 ],
		"bglocked" : 0,
		"defrect" : [ 133.0, 305.0, 956.0, 429.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Receiving data",
					"presentation_rect" : [ 310.0, 306.0, 163.0, 22.0 ],
					"fontsize" : 16.0,
					"patching_rect" : [ 75.0, 630.0, 209.0, 22.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Helvetica Bold",
					"id" : "obj-43"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1 1 1",
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"patching_rect" : [ 795.0, 150.0, 37.0, 18.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"id" : "obj-42"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "> 0",
					"outlettype" : [ "int" ],
					"fontsize" : 12.0,
					"patching_rect" : [ 750.0, 195.0, 32.5, 20.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"id" : "obj-40"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "led",
					"outlettype" : [ "int" ],
					"presentation_rect" : [ 266.0, 299.0, 35.0, 35.0 ],
					"oncolor" : [ 0.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 750.0, 225.0, 20.0, 20.0 ],
					"offcolor" : [ 0.607843, 0.607843, 0.607843, 1.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-39"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Interface example 1",
					"presentation_rect" : [ 45.0, 345.0, 467.0, 54.0 ],
					"fontsize" : 48.0,
					"patching_rect" : [ 60.0, 615.0, 598.0, 54.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Helvetica Bold",
					"id" : "obj-37"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"outlettype" : [ "int" ],
					"presentation_rect" : [ 45.0, 255.0, 60.0, 60.0 ],
					"patching_rect" : [ 1215.0, 360.0, 155.0, 155.0 ],
					"presentation" : 1,
					"bordercolor" : [ 0.0, 0.898039, 1.0, 1.0 ],
					"checkedcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"bgcolor" : [ 0.015686, 0.003922, 0.003922, 1.0 ],
					"id" : "obj-33"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "if $i1>-700 && $i1<-500 && $i2<-180 && $i2>-380 then 1 else 0",
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"patching_rect" : [ 1215.0, 270.0, 348.0, 20.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"id" : "obj-34"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"outlettype" : [ "int" ],
					"presentation_rect" : [ 45.0, 120.0, 60.0, 60.0 ],
					"patching_rect" : [ 1020.0, 330.0, 155.0, 155.0 ],
					"presentation" : 1,
					"bordercolor" : [ 0.0, 0.898039, 1.0, 1.0 ],
					"checkedcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"bgcolor" : [ 0.015686, 0.003922, 0.003922, 1.0 ],
					"id" : "obj-31"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "if $i1>-700 && $i1<-500 && $i2<180 && $i2>0 then 1 else 0",
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"patching_rect" : [ 1020.0, 240.0, 327.0, 20.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"id" : "obj-32"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"outlettype" : [ "int" ],
					"presentation_rect" : [ 120.0, 45.0, 60.0, 60.0 ],
					"patching_rect" : [ 840.0, 300.0, 155.0, 155.0 ],
					"presentation" : 1,
					"bordercolor" : [ 0.0, 0.898039, 1.0, 1.0 ],
					"checkedcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"bgcolor" : [ 0.015686, 0.003922, 0.003922, 1.0 ],
					"id" : "obj-30"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "if $i1>-500 && $i1<-250 && $i2<380 && $i2>180 then 1 else 0",
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"patching_rect" : [ 840.0, 210.0, 340.0, 20.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"id" : "obj-27"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "unpack i i i",
					"outlettype" : [ "int", "int", "int" ],
					"fontsize" : 12.0,
					"patching_rect" : [ 840.0, 165.0, 67.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontname" : "Arial",
					"id" : "obj-28"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "OSC-route /SKEL_LEFT_HAND",
					"outlettype" : [ "", "" ],
					"fontsize" : 12.0,
					"patching_rect" : [ 840.0, 135.0, 182.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"id" : "obj-26"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"size" : 1000.0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 240.0, 45.0, 326.0, 59.0 ],
					"knobcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 435.0, 330.0, 326.0, 59.0 ],
					"presentation" : 1,
					"relative" : 1,
					"bordercolor" : [ 0.0, 0.898039, 1.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"bgcolor" : [ 0.015686, 0.003922, 0.003922, 1.0 ],
					"id" : "obj-25"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "unpack i i i",
					"outlettype" : [ "int", "int", "int" ],
					"fontsize" : 12.0,
					"patching_rect" : [ 435.0, 165.0, 67.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontname" : "Arial",
					"id" : "obj-21"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "scale -240 240 0. 1000.",
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"patching_rect" : [ 435.0, 285.0, 136.0, 20.0 ],
					"numinlets" : 6,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"id" : "obj-19"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "if $i1>-240 && $i1<240 && $i2<360 && $i2>180 then $i1",
					"linecount" : 4,
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"patching_rect" : [ 435.0, 210.0, 98.0, 62.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"id" : "obj-20"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"size" : 1000.0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 585.0, 315.0, 326.0, 59.0 ],
					"knobcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 15.0, 480.0, 326.0, 59.0 ],
					"presentation" : 1,
					"relative" : 1,
					"bordercolor" : [ 0.0, 0.898039, 1.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"bgcolor" : [ 0.015686, 0.003922, 0.003922, 1.0 ],
					"id" : "obj-16"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "scale 250 700 0. 1000.",
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"patching_rect" : [ 285.0, 285.0, 132.0, 20.0 ],
					"numinlets" : 6,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"id" : "obj-17"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "if $i1>250 && $i1<700 && $i2<-360 && $i2>-540 then $i1",
					"linecount" : 4,
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"patching_rect" : [ 285.0, 210.0, 102.0, 62.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"id" : "obj-18"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"size" : 1000.0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 585.0, 180.0, 326.0, 59.0 ],
					"knobcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 15.0, 405.0, 326.0, 59.0 ],
					"presentation" : 1,
					"relative" : 1,
					"bordercolor" : [ 0.0, 0.898039, 1.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"bgcolor" : [ 0.015686, 0.003922, 0.003922, 1.0 ],
					"id" : "obj-9"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "scale 250 700 0. 1000.",
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"patching_rect" : [ 150.0, 285.0, 132.0, 20.0 ],
					"numinlets" : 6,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "if $i1>250 && $i1<700 && $i2<0 && $i2>-180 then $i1",
					"linecount" : 4,
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"patching_rect" : [ 150.0, 210.0, 102.0, 62.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"id" : "obj-7"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"size" : 1000.0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 585.0, 45.0, 326.0, 59.0 ],
					"knobcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 15.0, 330.0, 326.0, 59.0 ],
					"presentation" : 1,
					"relative" : 1,
					"bordercolor" : [ 0.0, 0.898039, 1.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"bgcolor" : [ 0.015686, 0.003922, 0.003922, 1.0 ],
					"id" : "obj-5"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "scale 250 700 0. 1000.",
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"patching_rect" : [ 15.0, 285.0, 132.0, 20.0 ],
					"numinlets" : 6,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "if $i1>250 && $i1<700 && $i2<360 && $i2>180 then $i1",
					"linecount" : 4,
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"patching_rect" : [ 15.0, 210.0, 102.0, 62.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "OSC-route /SKEL_RIGHT_HAND",
					"outlettype" : [ "", "" ],
					"fontsize" : 12.0,
					"patching_rect" : [ 15.0, 135.0, 190.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"id" : "obj-24"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "OSC-route /OSCELET",
					"outlettype" : [ "", "" ],
					"fontsize" : 12.0,
					"patching_rect" : [ 75.0, 105.0, 131.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"id" : "obj-23"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "OpenSoundControl",
					"outlettype" : [ "", "", "OSCTimeTag" ],
					"fontsize" : 12.0,
					"patching_rect" : [ 30.0, 75.0, 113.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontname" : "Arial",
					"id" : "obj-22"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "unpack i i i",
					"outlettype" : [ "int", "int", "int" ],
					"fontsize" : 12.0,
					"patching_rect" : [ 15.0, 165.0, 67.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontname" : "Arial",
					"id" : "obj-8"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "udpreceive 57120 OSCELET",
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"patching_rect" : [ 30.0, 45.0, 165.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation_rect" : [ 15.0, 15.0, 925.0, 395.0 ],
					"patching_rect" : [ 30.0, 570.0, 128.0, 128.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.015686, 0.003922, 0.003922, 1.0 ],
					"id" : "obj-35"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-7", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-2", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 1 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-18", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 1 ],
					"destination" : [ "obj-20", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 1 ],
					"destination" : [ "obj-27", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 1 ],
					"destination" : [ "obj-32", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 1 ],
					"destination" : [ "obj-34", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
