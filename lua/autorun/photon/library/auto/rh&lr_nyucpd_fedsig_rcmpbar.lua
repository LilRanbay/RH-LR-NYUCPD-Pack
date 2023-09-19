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

local name = "NYUCPD Federal Signal RCMP Bar"

local COMPONENT = {}

COMPONENT.Model = "models/anemolis/props/rcmp/anemolis_rcmpbar1.mdl"
COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.Category = "Lightbar"
COMPONENT.Category = "Interior"
COMPONENT.DefaultColors = {
	[1] = "BLUE",
	[2] = "RED",
	[3] = "AMBER",
}


COMPONENT.Meta = {
    auto_rcmp_bar= {
        AngleOffset = 90,
        W = 5.82,
        H = 8.3,
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

	[1] = { Vector( 2.15, -3, -1 ), Angle( 0, 0, 0 ), "auto_rcmp_bar" },
	[2] = { Vector( 2.15, 3, -1 ),Angle( 0, 0, 0 ), "auto_rcmp_bar" },
	[3] = { Vector( 2.08, -8.75, -1 ),Angle( 0, 0, 0 ), "auto_rcmp_bar" },
	[4] = { Vector( 2.08, 8.75, -1 ), Angle( 0, 0, 0 ), "auto_rcmp_bar" },
	[5] = { Vector( 1.98, -14.58, -1 ), Angle( 0, 0, 0 ), "auto_rcmp_bar" },
	[6] = { Vector( 1.98, 14.58, -1 ), Angle( 0, 0, 0 ), "auto_rcmp_bar" },
	[7] = { Vector( 1.56, -23.04, -1 ), Angle( 0, 0, 0 ), "auto_rcmp_bar" },
	[8] = { Vector( 1.56, 23.04, -1 ), Angle( 0, 0, 0 ), "auto_rcmp_bar" },

}

COMPONENT.Sections = {
	["lightbar_rb"] = {
        [1] = {  
        	{ 7, "_1" },
        },
        [2] = {  
            { 8, "_2" },
       },
        [3] = {  
            { 8, "_2" },{ 7, "_1" },
       },
    },   
    ["lightbar_amber"] = {
        [1] = {  
        	{ 1, "AMBER" },{ 3, "AMBER" },{ 5, "AMBER" },
        },
        [2] = {  
            { 2, "AMBER" }, { 4, "AMBER" }, { 6, "AMBER" },
       },
    },  
    ["lightbar_ta"] = {
        [1] = {  
        	{ 6, "AMBER" },
        },
        [2] = {  
            { 6, "AMBER" }, { 4, "AMBER" },
       },
        [3] = {  
            { 4, "AMBER" }, { 2, "AMBER" },
       },
        [4] = {  
            { 1, "AMBER" }, { 2, "AMBER" },
       },
        [5] = {  
            { 1, "AMBER" }, { 3, "AMBER" },
       },
        [6] = {  
            { 3, "AMBER" }, { 5, "AMBER" },
       },
        [7] = {  
            { 5, "AMBER" },
       },
       --diverge
       [8] = {  
            { 1, "AMBER" }, { 2, "AMBER" },
       },
       [9] = {  
            { 1, "AMBER" }, { 2, "AMBER" },{ 3, "AMBER" }, { 4, "AMBER" },
       },
       [10] = {  
            { 3, "AMBER" }, { 4, "AMBER" },{ 5, "AMBER" }, { 6, "AMBER" },
       },
       [11] = {  
            { 5, "AMBER" }, { 6, "AMBER" },
       },
    },     
}

COMPONENT.Patterns = {
	["lightbar_rb"] = {
        ["phase1"] = { 0 },
		["phase2"] = { 3,3,3,0,0,},
		["phase3"] = { 1,0,1,1,0,0,2,0,2,2,0,0 },
    },
    ["lightbar_amber"] = {
        ["phase1"] = { 1,1,1,1,1,1,2,2,2,2,2,2 },
		["phase2"] = { 1,1,1,0,1,1,1,0,1,1,1,1,1,1,0,0,0,0,2,2,2,0,2,2,2,0,1,1,1,1,1,1,0,0,0,0 },
		["phase3"] = { 1,1,0,1,1,0,1,1,0,1,1,1,1,0,0,0,2,2,0,2,2,0,2,2,0,2,2,2,2,0,0,0 },
    },
     ["lightbar_ta"] = {
        ["left"] = { 1,1,2,2,3,3,4,4,5,5,6,6,7,7,0,0,0,0,0 },
		["diverge"] = { 8,8,9,9,10,10,11,11,0,0,0,0,0 },
		["right"] = { 7,7,6,6,5,5,4,4,3,3,2,2,1,1,0,0,0,0,0 },
    },
}

COMPONENT.TrafficDisconnect = {
    ["lightbar_ta"] = {
       6, 5, 4, 3, 2, 1
    },
}

COMPONENT.Modes = {
	Primary = {
			M1 = { 
				["lightbar_rb"] = "phase1",
				 ["lightbar_amber"] = "phase1",
			},
			M2 = { 
				["lightbar_rb"] = "phase2",
				 ["lightbar_amber"] = "phase2",
			},
			M3 = { 
	            ["lightbar_rb"] = "phase3",
	            ["lightbar_amber"] = "phase3",
			},
		},
	Auxiliary = {
			L = {
			    ["lightbar_ta"] = "left",
			},
			R = {
				["lightbar_ta"] = "right"
			},
			D = {
				["lightbar_ta"] = "diverge"
			},
		},
	Illumination = {
		T = {
		},
		L = {
		},
		R = {
		}
	}
}

EMVU:AddAutoComponent( COMPONENT, name )