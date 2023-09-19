AddCSLuaFile()

--made with love by anemolis72
--edited with anger by LilRanbay

local A = "AMBER"
local R = "RED"
local DR = "D_RED"
local B = "BLUE"
local W = "WHITE"
local CW = "C_WHITE"
local SW = "S_WHITE"
local G = "GREEN"
local RB = "BLUE/RED"

local name = "NYUCPD Federal Signal RCMP Bar (CVPI)"

local COMPONENT = {}

COMPONENT.Model = "models/anemolis/props/rcmp/anemolis_rcmpbar2.mdl"
COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.Category = "Lightbar"
COMPONENT.Category = "Interior"
COMPONENT.DefaultColors = {
    [1] = "RED",
    [2] = "BLUE",
    [3] = "AMBER",
}

COMPONENT.Meta = {
    auto_rcmp_bar = {
        AngleOffset = 90,
        W = 5.05,
        H = 7.2,
        Sprite = "sprites/emv/fs_valor",
        Scale = .45,
        WMult = .35,
        EmitArray = {
            Vector( 1.95, 0, 0 ),
            Vector( 1.25, 0, 0 ),
            Vector( .5, 0, 0 ),
            Vector( -.5, 0, 0 ),
            Vector( -1.25, 0, 0 ),
            Vector( -1.95, 0, 0 ),
        }
    },
}

COMPONENT.Positions = {		

	[1] = { Vector( 1.32, -25.75, -.85 ), Angle( 0, 1.55, 0 ), "auto_rcmp_bar" },
    [2] = { Vector( 1.68, -18.5, -.82 ), Angle( 0, 1.55, 0 ), "auto_rcmp_bar" },
    [3] = { Vector( 1.75, -13.5, -.82 ),Angle( 0, 1.55, 0 ), "auto_rcmp_bar" },
    [4] = { Vector( 1.84, -8.5, -.82 ), Angle( 0, 1.55, 0 ), "auto_rcmp_bar" },
    [5] = { Vector( 1.84, 8.5, -.82 ),Angle( 0, 1.55, 0 ), "auto_rcmp_bar" },
    [6] = { Vector( 1.75, 13.5, -.82 ), Angle( 0, 1.55, 0 ), "auto_rcmp_bar" },
    [7] = { Vector( 1.68, 18.5, -.82 ), Angle( 0, 1.55, 0 ), "auto_rcmp_bar" },
    [8] = { Vector( 1.32, 25.75, -.85 ), Angle( 0, 1.55, 0 ), "auto_rcmp_bar" },

}

COMPONENT.Sections = {
    ["auto_rcmp_bar"] = {
        [1] = {  
            { 1, "_1" },{ 2, "_1" },{ 3, "_1" },{ 4, "_1" },{ 5, "_2" },{ 6, "_2" },{ 7, "_2" },{ 8, "_2" }
        },
        
        [2] = {  
            { 3, "_1" },{ 4, "_1" },{ 7, "_2" },{ 8, "_2" }
        },
        [3] = {  
            { 1, "_1" },{ 2, "_1" },{ 5, "_2" },{ 6, "_2" }
        },
        
        [4] = {  
            { 1, "_1" },{ 2, "_1" },{ 3, "_1" },{ 4, "_1" }
        },
        [5] = {  
            { 5, "_2" },{ 6, "_2" },{ 7, "_2" },{ 8, "_2" }
        },
        
        -- CODE 6 --
        
        [6] = {  
            { 7, "_2" },{ 8, "_2" }
        },
        [7] = {  
            { 1, "_1" },{ 2, "_1" }
        },
    },
    ["auto_rcmp_bar_traffic"] = {
        {  
            { 1, "_1" },{ 2, "_1" },{ 3, "_1" },{ 4, "_1" },{ 5, "_2" },{ 6, "_2" },{ 7, "_2" },{ 8, "_2" }
        },
        
        -- LEFT & RIGHT (From 2-16) --
        
        {  
            { 1, "_1" }
        },
        {  
            { 1, "_1" },{ 2, "_1" }
        },
        {  
            { 1, "_1" },{ 2, "_1" },{ 3, "_1" }
        },
        {  
            { 1, "_1" },{ 2, "_1" },{ 3, "_1" },{ 4, "_1" }
        },
        {  
            { 1, "_1" },{ 2, "_1" },{ 3, "_1" },{ 4, "_1" },{ 5, "_2" }
        },
        {  
            { 1, "_1" },{ 2, "_1" },{ 3, "_1" },{ 4, "_1" },{ 5, "_2" },{ 6, "_2" }
        },
        {  
            { 1, "_1" },{ 2, "_1" },{ 3, "_1" },{ 4, "_1" },{ 5, "_2" },{ 6, "_2" },{ 7, "_2" }
        },
        {  
            { 1, "_1" },{ 2, "_1" },{ 3, "_1" },{ 4, "_1" },{ 5, "_2" },{ 6, "_2" },{ 7, "_2" },{ 8, "_2" }
        },
        {  
            { 2, "_1" },{ 3, "_1" },{ 4, "_1" },{ 5, "_2" },{ 6, "_2" },{ 7, "_2" },{ 8, "_2" }
        },
        {  
            { 3, "_1" },{ 4, "_1" },{ 5, "_2" },{ 6, "_2" },{ 7, "_2" },{ 8, "_2" }
        },
        {  
            { 4, "_1" },{ 5, "_2" },{ 6, "_2" },{ 7, "_2" },{ 8, "_2" }
        },
        {  
            { 5, "_2" },{ 6, "_2" },{ 7, "_2" },{ 8, "_2" }
        },
        {  
            { 6, "_2" },{ 7, "_2" },{ 8, "_2" }
        },
        {  
            { 7, "_2" },{ 8, "_2" }
        },
        {  
            { 8, "_2" }
        },
        
        -- DIVERGE (From 17-20) --
        
        {  
            { 4, "_1" },{ 5, "_2" }
        },
        {  
            { 3, "_1" },{ 4, "_1" },{ 5, "_2" },{ 6, "_2" }
        },
        {  
            { 2, "_1" },{ 3, "_1" },{ 4, "_1" },{ 5, "_2" },{ 6, "_2" },{ 7, "_2" }
        },
        {  
            { 1, "_1" },{ 2, "_1" },{ 3, "_1" },{ 4, "_1" },{ 5, "_2" },{ 6, "_2" },{ 7, "_2" },{ 8, "_2" }
        }
    }
}

COMPONENT.Patterns = {
    ["auto_rcmp_bar"] = {
        ["debug"] = { 1 },
        
        ["code6"] = { 7,0,6,6,6,6,6,0,7,7,7,7 },
        ["code3"] = { 
            2,0,2,0,2,2,0,
            3,0,3,0,3,3,0,
            2,0,2,0,2,2,0,
            3,0,3,0,3,3,0,
            5,5,5,5,5,4,4,4,4,4,
            5,5,5,5,5,4,4,4,4,4,
        },
    },
    ["auto_rcmp_bar_traffic"] = {
        ["debug"] = { 1 },
        
        ["left"] = { 16,16,16,15,15,15,14,14,14,13,13,13,12,12,12,11,11,11,10,10,10,9,9,9,9,9,9,0,0,0 },
        ["right"] = { 2,2,2,3,3,3,4,4,4,5,5,5,6,6,6,7,7,7,8,8,8,9,9,9,9,9,9,0,0,0 },
        ["diverge"] = { 17,17,17,17,17,17,18,18,18,18,18,18,19,19,19,19,19,19,20,20,20,20,20,20,20,20,20,0,0,0,0,0,0 },
    }
}

COMPONENT.TrafficDisconnect = {
    ["auto_rcmp_bar_traffic"] = {
        1, 2, 3, 4, 5, 6, 7, 8
    }
}

COMPONENT.Modes = {
    Primary = {
            M1 = {
                ["auto_rcmp_bar"] = "code6",
            },
            M3 = {
                ["auto_rcmp_bar"] = "code3",
            },
    },
    Auxiliary = {
            L = {
                ["auto_rcmp_bar_traffic"] = "left",
            },
            R = {
                ["auto_rcmp_bar_traffic"] = "right",
            },
            D = {
                ["auto_rcmp_bar_traffic"] = "diverge",
            },
    },
    Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )