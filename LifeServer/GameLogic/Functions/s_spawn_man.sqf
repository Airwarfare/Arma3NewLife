/*
Author: Airwarfare
Purpose: Spawns a man at a random location defined in the database
*/
TheMan = nil;
while {true} do {
    sleep 2;
    _array = server_info select 0;
    _pos = selectRandom _array;
    diag_log format["ServerInfo: %1", server_info];
    diag_log format["Pos: %1", _pos];
    TheMan = "C_Nikos" createVehicle _pos;
    TheMan enableSimulation false;
    TheMan allowDamage false;
    publicVariable "TheMan";
    diag_log format["CurrentMan: %1", TheMan];
    [] remoteExec["fnc_rebelAction", -2];
    sleep 2640;
    deleteVehicle TheMan;
};