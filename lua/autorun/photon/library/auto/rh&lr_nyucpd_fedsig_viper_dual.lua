AddCSLuaFile()

local name = "NYUCPD Federal Signal Viper Dual"

local COMPONENT = {}

local FLICK = 0.25

COMPONENT.Model = "models/tdmcars/emergency/equipment/fedsig_viper_dual.mdl"
COMPONENT.Required = "489864412"
COMPONENT.Skin = 0
COMPONENT.Category = "Interior"
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.ForwardTranslation = true
COMPONENT.DefaultColors = {
	[1] = "RED",
	[2] = "BLUE",
	[3] = "WHITE"
}

COMPONENT.Meta = {
	auto_viper = {
		AngleOffset = 0,
		W = 4.5,
		H = 4,
		Sprite = "sprites/emv/tdm_viper",
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = -90,
		WMult = .55,
		Scale = .35,
		EmitArray = {
			Vector( 1.4, 0, 0 ),
			Vector( 0.85, 0, 0 ),
			Vector( .3, 0, 0 ),
			Vector( -1.4, 0, 0 ),
			Vector( -0.85, 0, 0 ),
			Vector( -.3, 0, 0 ),
		}
	},
}

COMPONENT.Positions = {

	[1] = { Vector( 0.63, 2.1, 0.78 ), Angle( 0, 90, 0 ), "auto_viper" },
	[2] = { Vector( 0.63, -2.1, 0.78 ), Angle( 0, 90, 0 ), "auto_viper" },

}

COMPONENT.Sections = {
	["auto_fedsig_viper_dual"] = {
		[1] = { { 1, "_1" }, { 2, "_2" } },
		[2] = { { 1, "_1" } },
		[3] = { { 2, "_2" } },
		[4] = { { 1, "_1", FLICK }, { 2, "_2", FLICK } },
	},
}

COMPONENT.Patterns = {
	["auto_fedsig_viper_dual"] = {
		["all"] = { 1 },
		
		["code6"] = { 
			1,4,1,4,1,1,
			1,1,1,1,
			1,1,1,1,1,1,1,1,1,1,
			1,1,1,1,1,1,1,1, 
		},
		["code6A"] = {  
			1,4,1,4,1,1,
			1,1,1,1,
			1,1,1,1,1,1,1,1,1,1,
			1,1,1,1,1,1,1,1, 
		},
		["code6B"] = {  
			1,4,1,4,1,1,
			1,1,1,1,
			1,1,1,1,1,1,1,1,1,1,
			1,1,1,1,1,1,1,1, 
		},
		
		["code3"] = { 1 },
		["code3A"] = { 
			2,0,2,0,2,0,3,0,3,0,3,0
		},
		["code3B"] = { 
			3,0,3,0,3,0,2,0,2,0,2,0
		},
	},
}

COMPONENT.Modes = {
	Primary = {
			M1 = {
				["auto_fedsig_viper_dual"] = "code6",
			},
			M3 = {
				["auto_fedsig_viper_dual"] = "code3",
			},
			PARK = {
				["auto_fedsig_viper_dual"] = "code6",
			},
		},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )