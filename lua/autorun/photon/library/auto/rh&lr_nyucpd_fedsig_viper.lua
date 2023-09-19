AddCSLuaFile()

local name = "NYUCPD Federal Signal Viper"

local COMPONENT = {}

local FLICK = 0.25

COMPONENT.Model = "models/tdmcars/emergency/equipment/fedsig_viper.mdl"
COMPONENT.Required = "489864412"
COMPONENT.Skin = 0
COMPONENT.Category = "Interior"
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.ForwardTranslation = true
COMPONENT.UsePhases = true
COMPONENT.DefaultColors = {
	[1] = "WHITE",
	[2] = "WHITE",
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

	[1] = { Vector( 0.63, 0, 0.78 ), Angle( 0, 90, 0 ), "auto_viper" },

}

COMPONENT.Sections = {
	["auto_fedsig_viper"] = {
		[1] = { { 1, "_1" } },
		[2] = { { 1, "_1", FLICK } },
	},
}

COMPONENT.Patterns = {
	["auto_fedsig_viper"] = {
		["all"] = { 1 },
		
		["code6"] = { 
			1,2,1,2,1,1,
			1,1,1,1,
			1,1,1,1,1,1,1,1,1,1,
			1,1,1,1,1,1,1,1, 
		},
		["code6A"] = {  
			1,2,1,2,1,1,
			1,1,1,1,
			1,1,1,1,1,1,1,1,1,1,
			1,1,1,1,1,1,1,1, 
		},
		["code6B"] = {  
			1,2,1,2,1,1,
			1,1,1,1,
			1,1,1,1,1,1,1,1,1,1,
			1,1,1,1,1,1,1,1, 
		},
		
		["code3"] = { 1 },
		["code3A"] = { 
			1,0,1,0,1,0,0,0,0,0,0,0
		},
		["code3B"] = { 
			0,0,0,0,0,0,1,0,1,0,1,0
		},
	},
}

COMPONENT.Modes = {
	Primary = {
			M1 = {
				["auto_fedsig_viper"] = "code6",
			},
			M3 = {
				["auto_fedsig_viper"] = "code3",
			},
			PARK = {
				["auto_fedsig_viper"] = "code6",
			},
		},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )