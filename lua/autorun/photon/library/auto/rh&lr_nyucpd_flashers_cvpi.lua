-- Edited by LilRanbay
AddCSLuaFile()

local A = "AMBER"
local R = "RED"
local DR = "D_RED"
local B = "BLUE"
local W = "WHITE"
local CW = "C_WHITE"
local SW = "S_WHITE"
local G = "GREEN"
local RB = "BLUE/RED"

local name = "NYUCPD CVPI Flashers"

local COMPONENT = {}

COMPONENT.Base = "RH&LR CVPI Flashers"
COMPONENT.DefaultColors = {
	[1] = "S_WHITE",
    [2] = "S_WHITE"
}

COMPONENT.Sections = {
	["headlights"] = {
       [1] = { { 1, SW, { 12, 0, 0 } }, { 2, SW, { -12, 0, 0 } }, },
    },
	["reverse"] = {
	   [1] = { { 3, "_1" }, { 4, "_2" }, },
	   [2] = { { 3, "_1" }, },
	   [3] = { { 4, "_2" }, },
	}
}

COMPONENT.Patterns = {
	["headlights"] = {
		["off"] = { 
			0 
		},
		
		["on"] = { 
			1 
		},
	},
	["reverse"] = {
		["off"] = {
			0
		},
		["on"] = {
			2,0,0,2,0,0,0,0,0,
			3,0,0,3,0,0,0,0,0
		},
	}
}

COMPONENT.Modes = {
	Primary = {
			M1 = {
				["headlights"] = "off",
				["reverse"] = "off",
			},
			M2 = {
				["headlights"] = "off",
				["reverse"] = "on",
			},
			M3 = {
				["headlights"] = "on",
				["reverse"] = "on",
			},
			REVERSE = {
				["reverse"] = "off",
			},
			BRAKE = {
				["reverse"] = "off",
			}
		},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )