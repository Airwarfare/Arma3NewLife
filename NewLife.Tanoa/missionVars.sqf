/*
Author: Airwarfare
Purpose: Misson vars in one place that need to be global for the mission file,
this just makes it easier for me to look and remember all of them in a some what organized way.
*/

//Main Info
playerInfo = nil;
serverInfo = nil;
posQuery = false;
isUniqueDone = false;
//Do Cash Or Bank Withdraw Pick

//Paycheck
life_paycheck = nil;
life_mainbank = nil;
//Gangs
gang_current_name = nil;
gang_isLeader = nil;

//Levels
life_level = nil;
life_civ_level = nil;
life_cop_level = nil;
life_terror_level = nil;
life_vip_level = nil;

//Side
life_sides = ["Cop", "Civ", "Terror", "Medic"];
life_side = nil;

//CopInfo
cop_rank = nil;

// ["LicenseName", Price, Illegal, StoreArray]
//Licenses
life_licenses = [
	["Drivers License", 50, false, ["DMV"]],
	["Truck License", 50, false, ["DMV"]],
	["TestingAdding", 200, false, ["DMV"]],
	["Gang License", 50000, false, ["DEV"]]
];

//[Level, [Unlocks]]
life_levelUnlocks = [
	//Don't need level one because you start there :)
	[2, ["New Clothes", "Pistol Unlocks"]],
	[3, []],
	[4, []],
	[5, []],
	[6, []],
	[7, []],
	[8, []],
	[9, []],
	[10, []],
	[11, []],
	[12, []],
	[13, []],
	[14, []],
	[15, []],
	[16, []],
	[17, []],
	[18, []],
	[19, []],
	[20, []]
];
/*
Math Notes, Linear Leveling
Level, XP, Difference
1: 100, -
2: 300, 200
3: 600, 300
4: 1000, 400
5: 1500, 500
Equation
levelexp = level*100 + lastlevelexp
*/

//[]
//Crimes
life_crimes = [
	500,
	1000,
	2000,
	5000,
	10000,
	20000,
	30000,
	40000,
	50000,
	75000,
	100000,
	120000
];

//["Name", Weight, Illegal, ImagePath]
life_virtual_items = [
	["Gold", 10, false, ""],
	["Pickaxe", 4, false, ""],
	["Apple", 1, false, ""],
	["Bacon", 1, false, ""]
];
