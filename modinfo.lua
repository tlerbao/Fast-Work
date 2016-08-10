--------------------------------------------------
---- This Mod By Talent. 327358@QQ.com
--------------------------------------------------
name = "[T] Fast Work(EN)"
description = "This mod allows you to quickly work"
author = "Talent"
version = "1.1"
forumthread = "None"
icon_atlas = "FastWork.xml"
icon = "FastWork.tex"
--------------------------------------------------
---- Compatibility
--------------------------------------------------
dont_starve_compatible = true
reign_of_giants_compatible = true
shipwrecked_compatible = true
api_version = 6

--------------------------------------------------
---- Config
--------------------------------------------------
configuration_options =
{
	{
        name = "QuickPick",
        label = "Fast Pick",
        options =	{
						{description = "On", data = true},
						{description = "Off", data = false},
					},
		default = true,
    },
	{
		name = "AxeState",
		label = "Fast Axe",
		options =	{
						{description = "On", data = true},
						{description = "Off", data = false},
					},
		default = true,
	},	
	{
		name = "MacheteState",
		label = "Fast Machete",
		options =	{
						{description = "On", data = true},
						{description = "Off", data = false},
					},
		default = true,
	},	
	{
		name = "PickAxeState",
		label = "Fast PickAxe",
		options =	{
						{description = "On", data = true},
						{description = "Off", data = false},
					},
		default = true,
	},	
	{
		name = "HammerState",
		label = "Fast Hammer",
		options =	{
						{description = "On", data = true},
						{description = "Off", data = false},
					},
		default = true,
	},	
	{
		name = "FishState",
		label = "Fast Fishing",
		options =	{
						{description = "On", data = true},
						{description = "Off", data = false},
					},
		default = true,
	},	
	{
        name = "CookTime",
        label = "Fast Cooking",
        options = 
        {
            {description = "0 second", data = 0},
			{description = "5 second", data = 5},
            {description = "10 second", data = 10},
			{description = "15 second", data = 15},
            {description = "20 second", data = 20},
			{description = "25 second", data = 25},
			{description = "30 second", data = 30},
			{description = "OFF", data = 999},
        },
        default = 0,
    },
	{
		name = "BuildState",
		label = "Fast Build",
		options =	{
						{description = "On", data = true},
						{description = "Off", data = false},
					},
		default = true,
	},	
}
