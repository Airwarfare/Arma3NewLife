/*
Author: Airwarfare
Purpose: Manages zones generically
*/
_type = _this select 0;
switch (_type) do {
    case "drugs": { CanDrug set[1, _this select 1];
                    CanDrug set[0, true];};
    case "safezone": { SafeZone = true; 
                       [["ZoneControl", "SafeZone"]] call BIS_fnc_advHint;};
    case "factiononly": { [_this select 1, _this select 2, _this select 3] call fnc_factionHandle; 
                          WrongSide = _this select 1;
                          [["ZoneControl", "FactionOnly"]] call BIS_fnc_advHint;};
    case "warningzone": { [_this select 1, 0, _this select 3] call fnc_receive_notification;};
};
//AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon