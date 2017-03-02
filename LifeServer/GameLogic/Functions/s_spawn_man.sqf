/*
Author: Airwarfare
Purpose: Spawns a man at a random location defined in the database
*/
_currentMan = nil;
while (true) do {
    if(!isNil _currentMan) then {
        deleteVehicle _currentMan;
    };
    sleep 120;
    _array = server_info select 0;
    _pos = selectRandom _array;
    _currentMan = "C_Nikos" createVehicle _pos;
    _currentMan enableSimulation false;
    _currentMan allowDamage false;
    [_currentMan] call remoteExec["fnc_rebelAction", -2];

    sleep 2640;
};