/*
Author: Airwarfare
Purpose: Misson vars in one place that need to be global for the mission file, 
this just makes it easier for me to look and remember all of them in a some what organized way.
*/

//Main Info
playerInfo = nil;
serverInfo = nil;


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
life_sides = ["Cop", "Civ", "Terror"];
life_side = nil;


// ["LicenseName", Price, Illegal, StoreArray]
//Licenses
life_licenses = [
	["Drivers License", 50, false, ["DMV"]],
	["Truck License", 50, false, ["DMV"]],
	["TestingAdding", 200, false, ["DMV"]],
	["Gang License", 50000, false, ["DEV"]]
];


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