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
    _currentMan = "" createVehicle _pos;
    //Add Actions

    sleep 2640;
};