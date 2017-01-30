
diag_log "Core\Init.sqf";
diag_log format["%1 typeName %2", life_side, typeName life_side];
if(life_side == "Cop") then {
    _LifeLevel = playerInfo select 7;
    if(_LifeLevel < cop_life_re) exitWith {
        disableUserInput true;
        "end1" call BIS_fnc_endMission;
        sleep 4;
        disableUserInput false;
    };
};
