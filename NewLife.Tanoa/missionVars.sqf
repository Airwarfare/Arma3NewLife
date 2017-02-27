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
//LifeStuff
SafeZone = false;
WrongSide = nil;
CanDrug = [false, ""];
//Side
life_sides = ["Cop", "Civ", "Terror", "Medic"];
life_side = nil;

//CopInfo
cop_rank = nil;

_keychain = [];