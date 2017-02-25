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
items_un_pro = [
	["Unprocessed Cocaine", 1, 400, ["Cocaine"]],
	["Stone", 4, 10, ["Cement", "Marble"]]
];

//Items Processed
items_pre_pro = [
	["Cocaine", 1, 15000, [""]],
	["Cement", 4, 6000, [""]],
	["Marble", 10, 12000, [""]]
];


//Cars
//Car Format
//["Name", "VehicleName", Price, [Shops], "Image"]
car_config = [
	["Offroad", "C_Offroad_01_F", 2000, ["CarShop"]]
];