AddCSLuaFile()

local name = "NYUCPD Federal Signal Vision HD"

local W = "S_WHITE"
local COMPONENT = {}

COMPONENT.Model = "models/sentry/props/vision.mdl"
COMPONENT.Lightbar = true
COMPONENT.Skin = 0
COMPONENT.Category = "Lightbar" 
COMPONENT.RotationEnabled = true
COMPONENT.Bodygroups = {}
COMPONENT.DefaultColors = {
	[1] = "AMBER/RED_HALOGEN",
	[2] = "S_WHITE",
	[3] = "RED_HALOGEN",
	[4] = "RED_HALOGEN",
	[5] = "RED_HALOGEN",
	[6] = "S_WHITE",
	[7] = "AMBER/RED_HALOGEN",
	-- 
	[8] = "AMBER",
}

COMPONENT.SubMaterials = {
	[2] = "rh&lr/nyucpd/props/vision_glass",
	[3] = "rh&lr/nyucpd/props/vision_glass_outer"
}

local sin, cos = math.sin, math.cos
local rad = math.rad

COMPONENT.Meta = {
	vision_ta = {
		AngleOffset = 90,
		W = 6.5,
		H = 6.5,
		Sprite = "sentry/props/vision/ta",
		WMult = 0.65,
		Scale = 0.35,
		EmitArray = {
			Vector( -1.67, 0, 0 ),
			Vector( -2.17, 0, 0 ),
			Vector( -2.67, 0, 0 ),
			Vector( -0.5, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( 0.5, 0, 0 ),
			Vector( 1.67, 0, 0 ),
			Vector( 2.17, 0, 0 ),
			Vector( 2.67, 0, 0 ),
		}
	},
	vision_rotator = {
		AngleOffset = 0,
		W = 5.4,
		H = 5.7,
		Sprite = "sentry/props/vision/pod",
		WMult = 1,
		Scale = 0.425,
		EmitArray = {
			Vector( 0, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( 0, 0, 0 ),
		}
	},
}

-- 5 - far left
-- 4 - middle left
-- 3 - inner left
-- 2 - middle
-- 6 - inner right
-- 7 - middle right
-- 8 - far right

COMPONENT.Bones = {
	["FAR_LEFT"] = {
		Bone = 5,
		AxisP = "p", -- pitch of bone affects pitch of rendered light
		AxisY = "y", -- yaw of bone affects roll of rendered light
		AxisR = "r" -- roll of bone affects yaw of rendered light
	},
	["MIDDLE_LEFT"] = {
		Bone = 4,
		AxisP = "p", -- pitch of bone affects pitch of rendered light
		AxisY = "y", -- yaw of bone affects roll of rendered light
		AxisR = "r" -- roll of bone affects yaw of rendered light
	},
	["INNER_LEFT"] = {
		Bone = 3,
		AxisP = "p", -- pitch of bone affects pitch of rendered light
		AxisY = "y", -- yaw of bone affects roll of rendered light
		AxisR = "r" -- roll of bone affects yaw of rendered light
	},
	["MIDDLE"] = {
		Bone = 2,
		AxisP = "p", -- pitch of bone affects pitch of rendered light
		AxisY = "y", -- yaw of bone affects roll of rendered light
		AxisR = "r" -- roll of bone affects yaw of rendered light
	},
	["INNER_RIGHT"] = {
		Bone = 6,
		AxisP = "p", -- pitch of bone affects pitch of rendered light
		AxisY = "y", -- yaw of bone affects roll of rendered light
		AxisR = "r" -- roll of bone affects yaw of rendered light
	},
	["MIDDLE_RIGHT"] = {
		Bone = 7,
		AxisP = "p", -- pitch of bone affects pitch of rendered light
		AxisY = "y", -- yaw of bone affects roll of rendered light
		AxisR = "r" -- roll of bone affects yaw of rendered light
	},
	["FAR_RIGHT"] = {
		Bone = 8,
		AxisP = "p", -- pitch of bone affects pitch of rendered light
		AxisY = "y", -- yaw of bone affects roll of rendered light
		AxisR = "r" -- roll of bone affects yaw of rendered light
	},
}

COMPONENT.BoneOperations = {
	[5] = { -- far left
		Default = { "S", 72, 25 },
		Illumination = {},
		Primary = {
			M1 = { "S", 180, 25 }, -- static at 0 degrees
			M3 = { "RP", 0, 69 }, -- static at 0 degrees
		},
		Auxiliary = {},
	},
	[4] = { -- mid left
		Default = { "S", 180, 25 },
		Illumination = {},
		Primary = {
			M3 = { "RP", 0, -55 }, -- static at 0 degrees
		},
		Auxiliary = {},
		Illumination = {
			T = { "S", 0, 70 }, -- static at 0 degrees
			L = { "S", -90, 70 }, -- static at 0 degrees
		},
	},
	[3] = { -- inner left
		Default = { "S", 144, 25 },
		Illumination = {},
		Primary = {
			M1 = { "S", 0, 25 }, -- static at 0 degrees
			M3 = { "RP", 0, 69 }, -- static at 0 degrees
		},
		Auxiliary = {},
	},
	[2] = { -- middle
		Default = { "S", 216, 25 },
		Illumination = {},
		Primary = {
			M3 = { "A", { 60, 360-60 }, 40 }, -- static at 0 degrees
		},
		Auxiliary = {},
	},
	[6] = { -- inner right
		Default = { "S", 288, 25 },
		Illumination = {},
		Primary = {
			M1 = { "S", 0, 25 }, -- static at 0 degrees
			M3 = { "RP", 0, 69 }, -- static at 0 degrees
		},
		Auxiliary = {},
	},
	[7] = { -- middle right
		Default = { "S", 0, 25 },
		Illumination = {},
		Primary = {
			M3 = { "RP", 0, -55 }, -- static at 0 degrees
		},
		Auxiliary = {},
		Illumination = {
			T = { "S", 0, 70 }, -- static at 0 degrees
			R = { "S", 90, 70 }, -- static at 0 degrees
		},
	},
	[8] = { -- far right
		Default = { "S", 0, 25 },
		Illumination = {},
		Primary = {
			M1 = { "S", 180, 25 }, -- static at 0 degrees
			M3 = { "RP", 0, 69 }, -- static at 0 degrees
		},
		Auxiliary = {},
	},
}

COMPONENT.Positions = {
	--front outer 2

	--rotators
	-- RE = Rotating Element
	-- FRONT = Bone information
	-- Vector = Relative position to bone
	-- Angle = Relative angle (offset?) to bone
	[1] = { { "RE", "FAR_LEFT", Vector( 0, -0.39, 0 ), Angle( 0, 0, 90 ) }, nil, "vision_rotator" },
	[2] = { { "RE", "MIDDLE_LEFT", Vector( 0, -0.39, 0 ), Angle( 0, 0, 90 ) }, nil, "vision_rotator" },
	[3] = { { "RE", "INNER_LEFT", Vector( 0, -0.39, 0 ), Angle( 0, 0, 90 ) }, nil, "vision_rotator" },
	[4] = { { "RE", "MIDDLE", Vector( 0, -0.39, 0 ), Angle( 0, 0, 90 ) }, nil, "vision_rotator" },
	[5] = { { "RE", "INNER_RIGHT", Vector( 0, -0.39, 0 ), Angle( 0, 0, 90 ) }, nil, "vision_rotator" },
	[6] = { { "RE", "MIDDLE_RIGHT", Vector( 0, -0.39, 0 ), Angle( 0, 0, 90 ) }, nil, "vision_rotator" },
	[7] = { { "RE", "FAR_RIGHT", Vector( 0, -0.39, 0 ), Angle( 0, 0, 90 ) }, nil, "vision_rotator" },

	[8] = { Vector( -13.651, -16.197, 5.118 ), Angle( 0, 0, 0 ), "vision_ta" },
	[9] = { Vector( -13.651, -9.747, 5.118 ), Angle( 0, 0, 0 ), "vision_ta" },
	[10] = { Vector( -13.651, -3.257, 5.118 ), Angle( 0, 0, 0 ), "vision_ta" },
	[11] = { Vector( -13.651, 3.257, 5.118 ), Angle( 0, 0, 0 ), "vision_ta" },
	[12] = { Vector( -13.651, 9.747, 5.118 ), Angle( 0, 0, 0 ), "vision_ta" },
	[13] = { Vector( -13.651, 16.197, 5.118 ), Angle( 0, 0, 0 ), "vision_ta" },
	
}

COMPONENT.Sections = {
	["auto_vision"] = {
		[1] = {
			{ 1, "_1" },{ 2, "_2" },{ 3, "_3" },{ 4, "_4" },{ 5, "_5" },{ 6, "_6" },{ 7, "_7" },
			{ 8, "_8" },{ 9, "_8" },{ 10, "_8" },{ 11, "_8" },{ 12, "_8" },{ 13, "_8" },
		},
	},
	["auto_vision_rotators"] = {
		-- DEBUG/RSPND
		{
			{ 1, "_1" },{ 2, "_2" },{ 3, "_3" },{ 4, "_4" },{ 5, "_5" },{ 6, "_6" },{ 7, "_7" },
		},
		-- SCENE
		{
			{ 1, "_1", { 7, 0, 1 } },{ 3, "_3", { 7, 0, 3 } },{ 5, "_5", { 7, 0, 0 } },{ 7, "_7", { 7, 0, 5 } }
		}
	},
	["auto_vision_traffic"] = {
		{
			{ 8, "_8" },{ 9, "_8" },{ 10, "_8" },{ 11, "_8" },{ 12, "_8" },{ 13, "_8" },
		},
		
		-- LEFT & RIGHT (From 2 to 12 ) --
		{
			{ 8, "_8" }
		},
		{
			{ 8, "_8" },{ 9, "_8" }
		},
		{
			{ 8, "_8" },{ 9, "_8" },{ 10, "_8" }
		},
		{
			{ 8, "_8" },{ 9, "_8" },{ 10, "_8" },{ 11, "_8" }
		},
		{
			{ 8, "_8" },{ 9, "_8" },{ 10, "_8" },{ 11, "_8" },{ 12, "_8" }
		},
		{
			{ 8, "_8" },{ 9, "_8" },{ 10, "_8" },{ 11, "_8" },{ 12, "_8" },{ 13, "_8" },
		},
		{
			{ 9, "_8" },{ 10, "_8" },{ 11, "_8" },{ 12, "_8" },{ 13, "_8" },
		},
		{
			{ 10, "_8" },{ 11, "_8" },{ 12, "_8" },{ 13, "_8" },
		},
		{
			{ 11, "_8" },{ 12, "_8" },{ 13, "_8" },
		},
		{
			{ 12, "_8" },{ 13, "_8" },
		},
		{
			{ 13, "_8" },
		},
		
		-- DIVERGE (From 13 to 17) --
		
		{
			{ 10, "_8" },{ 11, "_8" }
		},
		{
			{ 9, "_8" },{ 10, "_8" },{ 11, "_8" },{ 12, "_8" }
		},
		{
			{ 8, "_8" },{ 9, "_8" },{ 10, "_8" },{ 11, "_8" },{ 12, "_8" },{ 13, "_8" },
		},
		{
			{ 8, "_8" },{ 9, "_8" },{ 12, "_8" },{ 13, "_8" },
		},
		{
			{ 8, "_8" },{ 13, "_8" },
		},
		
		-- CAUTION (From 18 to 19) --
		{
			{ 8, "_8" },{ 9, "_8" },{ 12, "_8" },{ 13, "_8" }
		},
		{
			{ 10, "_8" },{ 11, "_8" }
		}
	},
}

COMPONENT.Patterns = {
	["auto_vision"] = {
		["debug"] = { 1 },
	},
	["auto_vision_rotators"] = {
		["debug"] = { 1 },
		
		["scene"] = { 2 },
		["rspnd"] = { 1 },
	},
	["auto_vision_traffic"] = {
		["debug"] = { 1 },
		
		["caution"] = { 18,18,18,18,18,18,19,19,19,19,19,19 },

		["left"] = { 2,2,2,3,3,3,4,4,4,5,5,5,6,6,6,7,7,7,7,7,7,0,0,0 },
		["right"] = { 12,12,12,11,11,11,10,10,10,9,9,9,8,8,8,7,7,7,7,7,7,0,0,0 },
		["diverge"] = { 13,13,13,13,14,14,14,15,15,15,15,15,15,0,0,0 },
	},
}

COMPONENT.Modes = { 
	Primary = {
		M1 = { 
			["auto_vision_rotators"] = "scene",
		},
		M3 = { 
			["auto_vision_rotators"] = "rspnd",
		}
	},
	Auxiliary = {
		CA = {
			["auto_vision_traffic"] = "caution"
		},
		L = {
			["auto_vision_traffic"] = "left"
		},
		R = {
			["auto_vision_traffic"] = "right"
		},
		D = {
			["auto_vision_traffic"] = "diverge"
		}
	},
	Illumination = {
		 T = {
		 	{ 2, W }, { 4, W }, { 6, W }
		 },
		 L = {
		 	{ 2, W }, { 4, W }
		 },
		 R = {
		 	{ 4, W }, { 6, W }
		 }
	}
}

EMVU:AddAutoComponent( COMPONENT, name )

