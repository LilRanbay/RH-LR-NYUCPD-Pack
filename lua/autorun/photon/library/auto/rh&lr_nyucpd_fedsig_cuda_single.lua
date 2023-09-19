-- Edited by LilRanbay
AddCSLuaFile()

local name = "NYUCPD Federal Signal Cuda TriOptic Single"

local COMPONENT = {}

COMPONENT.Model = "models/anemolis/props/trioptic/trioptic3.mdl"
COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 2
COMPONENT.UsePhases = true
COMPONENT.Category = "Exterior"
COMPONENT.DefaultColors = {
    [1] = "BLUE",
}

COMPONENT.Meta = {
    cuda = {
        AngleOffset = 0,
        W = 4.1,
        H = 4.35,
        Sprite = "sprites/anemolis/trioptic",
        WMult = 0.65,
        Scale = .3,
        NoLegacy = true,
        DirAxis = "Up",
        DirOffset = 90,
        EmitArray = {
            Vector( 1.355, -.57, 0 ),
            Vector( 1.355, 0, 0 ),
            Vector( 1.355, .57, 0 ),
            Vector( -.04, -.57, 0 ),
            Vector( -.04, 0, 0 ),
            Vector( -.04, .57, 0 ),
            Vector( -1.44, -.57, 0 ),
            Vector( -1.44, 0, 0 ),
            Vector( -1.44, .57, 0 ),
        }
    },
}

COMPONENT.Positions = {

    [1] = { Vector( .05, 1.55, .63 ), Angle( 0, 0, 0 ), "cuda" },

}

COMPONENT.Sections = {
    ["cuda"] = {
        [1] = { { 1, "_1" } },
    }
}

COMPONENT.Patterns = {
    ["cuda"] = {
        ["code1"] = {1,1,1,1,1,0,0,0,0,0},
        ["code1A"] = {1,1,1,1,1,0,0,0,0,0},
        ["code1B"] = {0,0,0,0,0,1,1,1,1,1},
        ["code3"] = {1,0,1,0,1,0,1,1,0,0,0,0,0,0,0,0,0},
        ["code3A"] = {1,0,1,0,1,0,1,1,0,0,0,0,0,0,0,0,0 },
        ["code3B"] = {0,0,0,0,0,0,0,0,0,1,0,1,0,1,0,1,1},
		["park"] = {1,1,1,1,1,0,0,0,0,0},
        ["parkA"] = {1,1,1,1,1,0,0,0,0,0},
        ["parkB"] = {0,0,0,0,0,1,1,1,1,1},
    }
}

COMPONENT.Modes = {
    Primary = {
        M1 = { ["cuda"] = "code1" },
        M3 = { ["cuda"] = "code3" },
		PARK = { ["cuda"] = "park" },
    },
    Auxiliary = {
        L = {

        },
        R = {

        },
        D = {

        },
    },
    Illumination = {
        L = {

        },
        R = {

        },
        F = {

        },
        T = {

        }
    }
}

EMVU:AddAutoComponent( COMPONENT, name )