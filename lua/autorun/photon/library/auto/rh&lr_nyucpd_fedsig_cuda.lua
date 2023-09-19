-- Edited by LilRanbay
AddCSLuaFile()

local name = "NYUCPD Fedsig Cuda Trioptic"

local COMPONENT = {}

COMPONENT.Model = "models/cefr/paolo/lapd/equipment/fedsig_cuda_trioptic.mdl"
COMPONENT.Skin = 0
COMPONENT.Category = "Interior"
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.ForwardTranslation = true
COMPONENT.DefaultColors = {
	[1] = "BLUE",
	[2] = "BLUE",
}

COMPONENT.Meta = {
	auto_cuda = {
		AngleOffset = 0,
		W = 3.4,
		H = 3.5,
		Sprite = "paolo/lapd/equipment/emessive",
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = 90,
		WMult = 0.65, 
		Scale = .3,
		EmitArray = {
			Vector( 1.15, -0.5, 0 ),
			Vector( 0, -0.5, 0 ),
			Vector( -1.15, -0.5, 0 ),

			Vector( 1.15, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( -1.15, 0, 0 ),

			Vector( 1.15, 0.5, 0 ),
			Vector( 0, 0.5, 0 ),
			Vector( -1.15, 0.5, 0 ),
		}
	}
}

COMPONENT.Positions = {

	[1] = { Vector( -1.35, 1.7, 1.2 ), Angle( 0, 90, 0 ), "auto_cuda" },
	[2] = { Vector( -1.35, -1.7, 1.2 ), Angle( 0, 90, 0 ), "auto_cuda" }

}

COMPONENT.Sections = {
	["auto_fedsig_cuda"] = {
		[1] = { { 1, "_1" }, { 2, "_2" },  },
		[2] = { { 1, "_1" } },
		[3] = { { 2, "_2" } }
    }
}

COMPONENT.Patterns = {
	["auto_fedsig_cuda"] = {
		["park"] = { 2,2,2,2,2,3,3,3,3,3 },
		["parkA"] = { 2,2,2,2,2,3,3,3,3,3 },
		["parkB"] = { 3,3,3,3,3,2,2,2,2,2 },

		["response"] = { 2,0,2,0,2,2,2,0,3,0,3,0,3,3,3,0, },
		["responseA"] = { 2,2,2,2,3,3,3,3 },
		["responseB"] = { 3,3,3,3,2,2,2,2 },
	},
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["auto_fedsig_cuda"] = "park" },
		M2 = { ["auto_fedsig_cuda"] = "park" },
		M3 = { ["auto_fedsig_cuda"] = "response" },
	},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )