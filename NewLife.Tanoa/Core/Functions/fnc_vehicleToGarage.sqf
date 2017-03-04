/*
Author: Airwarfare
Purpose: Puts a vehicle into the MySQL DB
*/
_objects = nearestObjects [player, ["Car", "Tank", "Helicopter", "Plane", "Boat"], 30];

{
    _var = _x getVariable "Owner";
    diag_log format["_Var: %1", _var];
    if(_var find (getPlayerUID player) != -1) then {
        //Put Car in DB
        diag_log "Found Car";
    };
} forEach _objects;