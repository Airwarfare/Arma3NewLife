/*
Author: Airwarfare
Purpose: receives playerInfo
*/
playerInfo = _this;
if(isNil "life_level") then {
	[] call fnc_player_update_life_levels;
};
["PlayerInfo Update", 2, "Complete"] call fnc_receive_notification;
//TickTime2 = diag_tickTime;
//hint format["Timer: %1ms", TickTime2 - TickTime1];
