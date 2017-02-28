/*
Author:Airwarfare
Purpose: Var to access for the mission file and making them easier to edit
Note: This file is going to be massive and I will try to organize it the best I can but good luck
*/
//Spawn
positions = nil;
currentPos = nil;
//Gangs

//Weight
weight_max = 0;
weight_moverestriction = 0; //In percentage, this is how much you will be slowed for every 1 "pound" over the max
weight_modifier = 0; //In percentage, amount of extra weight per "slot" or "weight carry" of a backpack


//Cop Level Requirement
cop_life_re = 5;


//DLC Info
dlc_array = [
	["Apex", false],
	["Marksmen", false],
	["Helicopter", false]
];


/*
Items
Items Format
["ItemName", weight, value, [Parent], "Picture"]

*/

//Items Unprocessed
//Items Unprocessed
items_un_pro = [
    ["Unprocessed Cocaine", 1, 400, ["Cocaine"]],
    ["Unprocessed Weed", 1, 200, ["Weed"]],
    ["Lumber", 4, 5, ["Plywood Stack"]],
    ["Unprocessed Diamonds", 20, 500, ["Diamonds"]],
    ["Unprocessed Iron", 20, 250, ["Iron"]],
    ["Unprocessed Meth", 2, 100, ["Meth"]],
    ["Scrap Metal", 12, 50, ["Metal"]],
    ["Apples", 1, 2, ["Grandma's Pastry"]],
    ["Unprocessed Caviar", 1, 10, ["Caviar"]],
    ["Unprocessed Whale", 50, 1000, ["Whale Meat"]],
    ["Unprocessed Salmon", 5, 30, ["Salmon"]],
    ["Unprocessed Tuna", 3, 25, ["Canned Tuna"]],
    ["Stone", 4, 10, ["Cement", "Marble"]],
    ["Unprocessed Wild Boar", 5, 40, ["Pork"]],
    ["Unprocessed Wild Deer", 5, 50, ["Deer Jerky"]],
    ["Unprocessed Wild Horse", 6, 25, ["Tub of McDonald Meat"]]
];

//Items Processed
items_pre_pro = [
    ["Cocaine", 1, 15000, [""]],
    ["Cement", 4, 6000, [""]],
    ["Marble", 10, 12000, [""]],
    ["Weed", 1, 10000, [""]],
    ["Plywood Stack", 4, 100, [""]],
    ["Diamonds", 15, 500000, [""]],
    ["Iron", 15, 100000,[""]],
    ["Meth", 1, 25000, [""]],
    ["Metal", 20, 75, ["Car Parts"]],
    ["Grandma's Pastry", 4, 60, [""]],
    ["Car Parts", 15, 200, [""]],
    ["Caviar", 1, 20000, [""]],
    ["Whale Meat", 50, 1000, [""]],
    ["Salmon", 5, 100, [""]],
    ["Canned Tuna", 2, 100, [""]],
    ["Pork", 5, 100, [""]],
    ["Deep Jerky", 5, 120, [""]],
    ["Tub of McDonald Meat", 6, 50, ["McDonalds Hamburger"]],
    ["McDonalds Hamburger", 3, 120, [""]]
];


//Cars
//Car Format
//["Name", "VehicleName", Price, [Shops], VirtualStorage]
car_config = [
    ["Offroad", "C_Offroad_01_F", 2000, ["CarShop"], 1000],
    ["Sport Hatchback", "C_Hatchback_01_sport_F", 10000, ["CarShop"], 1000],
    ["Quadbike", "C_Quadbike_01_F", 1000, ["CarShop"], 1000],
    ["SUV", "C_SUV_01_F", 2500, ["CarShop"], 1000],
    ["Hatchback", "C_Hatchback_01_F", 3500, ["CarShop"], 1000],
    ["Van", "C_Van_01_transport_F", 5000, ["CarShop"], 1000],
    ["Armed Offroad", "I_G_Offroad_01_armed_F", 100000, ["Swat", "Terrorist"], 1000],
    ["MG Armed MRAP", "I_MRAP_03_hmg_F", 1000000, ["Swat", "Terrorist"], 1000],
    ["Cop Quadbike", "B_G_Quadbike_01_F", 1000, ["Swat"], 1000],
    ["Cop Offroad", "C_Offroad_01_blue_F", 2000, ["Swat"], 1000],
    ["Cop Hatchback", "C_Hatchback_01_blue_F", 3500, ["Swat"], 1000],
    ["Cop Sport Hatchback", "C_Hatchback_01_sport_blue_F", 10000, ["CopShop"], 1000],
    ["Cop SUV", "SUV_01_base_grey_F", 2500, ["CopShop"], 1000]
];

// ["LicenseName", Price, Illegal, StoreArray]
//Licenses
life_licenses = [
	["Drivers License", 50, false, ["DMV"]],
	["Truck License", 50, false, ["DMV"]],
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