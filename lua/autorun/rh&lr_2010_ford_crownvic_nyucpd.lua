AddCSLuaFile()   

local VehicleName = "2010 Ford Crown Victoria UCPD [NY] [RH&LR]"

local EMV = {}

local A = "AMBER" 
local R = "RED"
local G = "GREEN"
local DR = "D_RED"
local B = "BLUE"
local W = "WHITE"
local CW = "C_WHITE"
local SW = "S_WHITE"

EMV.Siren = "lr_fs_ss2000_lms"
EMV.Skin = "rh&lr/nyucpd/cvpi10/cvpi10_patrol"
EMV.Color = Color(255,255,255)

EMV.SubMaterials = { 
	["11"] = "rh&lr/glass/cvpi10/cvpi_glass_fs", 
}

EMV.Liveries = {
	["UCPD Global"] = {
		["UCPD Patrol"] = "rh&lr/nyucpd/cvpi10/cvpi10_patrol",
	}
}

EMV.BodyGroups = {
	{ 0, 0 }, -- car
	{ 1, 0 }, -- pushbar
	{ 2, 0 }, -- grille
	{ 3, 0 }, -- hubcaps
	{ 4, 0 }, -- doortrim
	{ 5, 0 }, -- rearfascia
	{ 6, 0 }, -- reartrim
	{ 7, 0 }, -- handles
	{ 8, 0 }, -- spotlight_l
	{ 9, 0 }, -- spotlight_r
	{ 10, 0 }, -- trunkemblem
	{ 11, 0 }, -- trunkmodel
	{ 12, 0 }, -- plateholder
	{ 13, 0 }, -- console
	{ 14, 0 }, -- windowbars
	{ 15, 0 }, -- partition
	{ 16, 0 }, -- rims
	{ 17, 0 }, -- mirrors
	{ 18, 0 }, -- door_l_notch
	{ 19, 0 }, -- door_r_notch
	{ 20, 0 }, -- keypad
	{ 21, 0 }, -- bumperf_chrome
	{ 22, 0 }, -- bumperr_chrome
	{ 23, 0 }, -- rainguards
	{ 24, 0 }, -- odometer
	{ 25, 0 }, -- clamped1
	{ 26, 0 }, -- clamped2
	{ 27, 0 }, -- clamped3
	{ 28, 0 }, -- clamped4
	{ 29, 0 }, -- clamped5
	{ 30, 0 }, -- clamped6
	{ 31, 0 }, -- clamped7
}

EMV.Props = {
	-- INTERIOR PROPS --
	-- DASHCAM
    {
		Model = "models/supermighty/photon/dashcam.mdl",
		Scale = 1,
		Pos = Vector(7.8, 14, 58.3),
		Ang = Angle( 0, -90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	--RADAR
	{
		Model = "models/pringle/props/stalkerdsr2x.mdl",
		Scale = 0.2,
		Pos = Vector(-5, 25.9, 47.9),
		Ang = Angle( 1.8, 0, -4),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	{
		Model = "models/schmal/stalker_dual_aux.mdl", 
		Scale = 0.25,
		Pos = Vector(-30, 30.5, 46.7),
		Ang = Angle( 8, 180, 2),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,    
	},
	{
		Model = "models/schmal/stalker_dual_aux.mdl", 
		Scale = 0.25,
		Pos = Vector(-23, -61.4, 61.2),   
		Ang = Angle( 180-8, 0, -2),   
		RenderGroup = RENDERGROUP_OPAQUE, 
		RenderMode = RENDERMODE_NONE, 
	},
	-- GUNS
    {
		Model = "models/c3/shotgun/shotgun.mdl",
		Scale = 0.5,
		Pos = Vector(5, -16.5, 40),
		Ang = Angle( -10, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	{
		Model = "models/pringle/props/m16_rifle/m16gunlock.mdl",
		Scale = 0.5,
		Pos = Vector(-5, -15, 40),
		Ang = Angle( 0, 180, -10),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	-- FOCKING PUTER MATE
    {
       	Model = "models/pringle/props/laptopstands/laptopstand2.mdl" ,
		Scale = 0.3, 
		Pos = Vector(6, 12, 37.2), 
		Ang = Angle( 0, 180, -2),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
    },
    {
      	Model = "models/anm_toughbook/anm_toughbook55.mdl",
		Scale = 1.15,
		Pos = Vector(6, 12, 37.5),
		Ang = Angle( 22, -135, -1.5),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	-- CONSOLE
	{
        Model = "models/gandhi/props/radio.mdl",
        Scale = .36,
        Pos = Vector(0, 12.90, 27.75),
        Ang = Angle( -163, -90, 0),
        RenderGroup = RENDERGROUP_OPAQUE,
        RenderMode = RENDERMODE_NONE,
    },
    -- CONTROLLER
    {
		Model = "models/tdmcars/emergency/equipment/fedsig_smartsiren.mdl",
		Scale = 1,
		Pos = Vector(0, 4, 24.3),
		Ang = Angle( 20, -90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	-- EXTERIOR PROPS --
	{
		Model = "models/gandhi/props/ts100.mdl",
		Scale = 1,
		Pos = Vector(0, 110.5, 28.75),
		Ang = Angle( 0, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE
	},
	{
		Model = "models/japanplate/licenseplate.mdl",
		Scale = .96,
		Pos = Vector(0, -123.5, 35.8),
		Ang = Angle( -12, -90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
		SubMaterials = {[0] = "rh&lr/plates/id/plate_police"}
	},
	{
		Model = "models/japanplate/licenseplate.mdl",
		Scale = .96,  
		Pos = Vector(0, 117.79, 18.3),
		Ang = Angle( 6.4, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,       
		SubMaterials = {[0] = "rh&lr/plates/id/plate_police"}
	}
} 

EMV.Auto = {
	-- LIGHTBAR --
	{  
		ID = "NYUCPD Federal Signal Vision HD",
		Scale = .995,
		Pos = Vector(0, -18, 65.55), 
		Ang = Angle( 0, 180, 0), 
	},
	-- FLASHERS --
	{
		ID = "NYUCPD CVPI Flashers",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ), 
		Ang = Angle( 0, 0, 0),
	}
}

EMV.Sequences = {
	Sequences = {
		{ Name = "SCENE", Stage = "M1", Components = {}, Disconnect = {} },
		{ Name = "RSPND", Stage = "M3", Components = {}, Disconnect = {} }
	},
	Traffic = {
		{ Name = "FLASH", Stage = "CA", Components = {}, Disconnect = {} },
		{ Name = "LEFT", Stage = "L", Components = {}, Disconnect = {} },
		{ Name = "DIVERGE", Stage = "D", Components = {}, Disconnect = {} },
		{ Name = "RIGHT", Stage = "R", Components = {}, Disconnect = {} }
	},
	Illumination = {
		{
			Name = "TKDN",
			Icon = "takedown",
			Stage = "T",
			Components = {},
			BG_Components = {},
			Preset_Components = {},
			Lights = {
				-- LIGHTBAR --
				{ Vector( 0, -3, 73.6 ), Angle( 0, 90, 0 ), "takedown_vision" },
				{ Vector( -14.5, -13.65, 73.6 ), Angle( 0, 90, 0 ), "takedown_vision" },
				{ Vector( 14.5, -13.65, 73.6 ), Angle( 0, 90, 0 ), "takedown_vision" },
			},
			Disconnect = {}
		},
		{
			Name = "LEFT",
			Icon = "alley-left",
			Stage = "L",
			Components = {},
			BG_Components = {},
			Preset_Components = {},
			Lights = {
				-- LIGHTBAR --
				{ Vector( 0, -3, 73.6 ), Angle( 0, 180, 0 ), "takedown_vision" },
				{ Vector( -14.5, -13.65, 73.6 ), Angle( 0, 180, 0 ), "takedown_vision" },
			},
			Disconnect = {}
		},
		{
			Name = "RIGHT",
			Icon = "alley-right",
			Stage = "R",     
			Components = {},
			BG_Components = {},
			Preset_Components = {},
			Lights = {
				-- LIGHTBAR --
				{ Vector( 0, -3, 73.6 ), Angle( 0, 0, 0 ), "takedown_vision" },
				{ Vector( 14.5, -13.65, 73.6 ), Angle( 0, 0, 0 ), "takedown_vision" },
			},
			Disconnect = {}
		},
	}
}

EMV.Lamps = {
	["takedown_vision"] = {
		Color = Color(230,220,190,255),
		Texture = "effects/flashlight001",
		Near = 110,
		FOV = 100,
		Distance = 900,
	}
}
 
local V = { 
	Name = VehicleName, 
	Class = "prop_vehicle_jeep", 
	Category = "RH&LR Union City Police Department",
	Author = "RH&LR",
	Model = "models/sentry/cvpi_hd.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/sentry/cvpi_hd.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", "rh&lr_nyucpd_cvpi10", V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end