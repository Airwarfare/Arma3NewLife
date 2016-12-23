/*
Author: Airwarfare
Purpose: receives playerInfo
*/
playerInfo = _this;
if(isNil "life_level") then {
	[] call fnc_player_update_life_levels;
};