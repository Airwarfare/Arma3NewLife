/*
Author: Airwarfare
Purpose: Checks if player has a rebel license
*/
_licenses = playerInfo select 13;
{
    if(_x select 0 == "Terrorist") then {
        life_side = life_sides select 2;
    };
} forEach _licenses;