/*
Author: Airwarfare
Purpose: Turns a civ into a rebel
*/
_bankAmount = playerInfo select 4;
if(_bankAmount >= 10000) then {
    [-10000] call fnc_update_bank_value;
    life_side = life_sides select 2;
    ["You have joined", 2, "TERRORIST"] call fnc_receive_notification;
} else {
    ["Error not enough money! Need 10k", 0] call fnc_receive_notification;
};