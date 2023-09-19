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
        ["debug"] = { 1 },

        ["scene"] = { 1 },
        ["sceneA"] = { 1,1,1,1,1,0,0,0,0,0 },
        ["sceneB"] = { 0,0,0,0,0,1,1,1,1,1 },
        ["sceneC"] = { 1,1,1,1,1,0,0,0,0,0 },
        ["sceneD"] = { 0,0,0,0,0,1,1,1,1,1 },

		["rspnd"] = { 1 },
        ["rspndA"] = {
            1,1,0,1,0,1,1,1,
            0,0,0,0,0,0,0,0
        },
        ["rspndB"] = {
            0,0,0,0,0,0,0,0,
            1,1,0,1,0,1,1,1
        },
        ["rspndC"] = {
            0,0,1,1,0,1,0,1,
            1,1,0,0,0,0,0,0
        },
        ["rspndD"] = {
            1,0,0,0,0,0,0,0,
            0,1,1,0,1,0,1,1
        },
    }
}

COMPONENT.Modes = {
    Primary = {
        M1 = { ["cuda"] = "scene" },
        M3 = { ["cuda"] = "rspnd" },
    },
    Auxiliary = {},
    Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )