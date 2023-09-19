AddCSLuaFile()

local name = "NYUCPD Federal Signal MicroPulse"

local COMPONENT = {}

COMPONENT.Model = "models/noble/photon/fedsig_micropulse.mdl"
COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 2
COMPONENT.UsePhases = true
COMPONENT.Category = "Exterior"
COMPONENT.DefaultColors = {
    [1] = "RED",
    [2] = "WHITE"
}

COMPONENT.Meta = {
    auto_pulse_left = {
        AngleOffset = 0,
        W = 5.4,
        H = 5.0,
        Sprite = "sprites/emv/fs_micropulse_left",
        NoLegacy = true,
        DirAxis = "Up",
        DirOffset = 90,
		WMult = 1,
		Scale = .3,
		EmitArray = {
			Vector( .7, 0, 0 ),
			Vector( -.15, 0, 0 ),
			Vector( -.95, 0, 0 ),
		}
    },
    auto_pulse_right = {
        AngleOffset = 0,
        W = 5.4,
        H = 5.0,
        Sprite = "sprites/emv/fs_micropulse_right",
        NoLegacy = true,
        DirAxis = "Up",
        DirOffset = 90,
		WMult = 1,
		Scale = .3,
		EmitArray = {
			Vector( -.7, 0, 0 ),
			Vector( .15, 0, 0 ),
			Vector( .95, 0, 0 ),
		}
    },
    auto_pulse = {
        AngleOffset = 0,
        W = 5.4,
        H = 5.0,
        Sprite = "rh&lr/sprites/fs_micropulse",
        NoLegacy = true,
        DirAxis = "Up",
        DirOffset = 90,
		WMult = 1,
		Scale = .3,
		EmitArray = {
			Vector( -2.05, 0, 0 ),
			Vector( -1.2, 0, 0 ),
			Vector( -.4, 0, 0 ),
			Vector( 2.05, 0, 0 ),
			Vector( 1.2, 0, 0 ),
			Vector( .4, 0, 0 ),
		}
    },
    auto_pulse_blank = {
        AngleOffset = 0,
        W = 0,
        H = 0,
        Sprite = "sprites/emv/blank",
        NoLegacy = true,
        DirAxis = "Up",
        DirOffset = 90,
		WMult = 0,
		Scale = 0
    },
}

COMPONENT.Positions = {

    [1] = { Vector( -2.555, .26, -.86 ), Angle( 0, 0, 0 ), "auto_pulse_right" },
	[2] = { Vector( .13, .26, -.86 ), Angle( 0, 0, 0 ), "auto_pulse_left" },

}

COMPONENT.Sections = {
	["auto_pulse"] = {
		[1] = { { 1, "_1" }, { 2, "_1" }  },
		
		-- SPLIT --
		[2] = { { 1, "_1" }  },
		[3] = { { 2, "_2" }  },
		[4] = { { 1, "_1" }, { 2, "_2" }  }
	}
}

COMPONENT.Patterns = {
    ["auto_pulse"] = {
		["all"] = { 1 },
		
		["stage1"] = { 1 },

		["stage1A"] = { 0 },
		["stage1B"] = { 0 },

		["stage1SA"] = { 0 },
		["stage1SB"] = { 0 },
		

		["stage3"] = { 1 },
		["stage3A"] = { 
			1,0,1,0,1,0,1,
			0,0,0,0,0,0,0
		},
		["stage3B"] = { 
			0,0,0,0,0,0,0,
			1,0,1,0,1,0,1
		},

		["stage3SA"] = { 
			2,3,0,0,0,
			0,0,3,2,0
		},

		["stage3SB"] = { 
			0,0,2,3,0,
			3,2,0,0,0
		},
	}
}

COMPONENT.Modes = {
	Primary = {
			M1 = {
				["auto_pulse"] = "stage1",
			},
			M3 = {
				["auto_pulse"] = "stage3",
			}
		},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )

local name = "NYUCPD Federal Signal MicroPulse GAY"

local COMPONENT = {}

COMPONENT.Base = "IDBCSD Federal Signal MicroPulse"
COMPONENT.NotLegacy = true

COMPONENT.Meta = {
    auto_pulse_left = {
        AngleOffset = -90,
        W = 5.4,
        H = 5.0,
        Sprite = "sprites/emv/fs_micropulse_left",
		WMult = 1,
		Scale = .3,
		EmitArray = {
			Vector( .7, 0, 0 ),
			Vector( -.15, 0, 0 ),
			Vector( -.95, 0, 0 ),
		}
    },
    auto_pulse_right = {
        AngleOffset = -90,
        W = 5.4,
        H = 5.0,
        Sprite = "sprites/emv/fs_micropulse_right",
		WMult = 1,
		Scale = .3,
		EmitArray = {
			Vector( -.7, 0, 0 ),
			Vector( .15, 0, 0 ),
			Vector( .95, 0, 0 ),
		}
    },
}

EMVU:AddAutoComponent( COMPONENT, name )