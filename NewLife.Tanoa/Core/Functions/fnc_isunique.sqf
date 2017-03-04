/*
Author: Airwarfare
Purpose: Gets if the player is unique or not
*/
player_unique = _this;
if(!player_unique) then
{
	[getPlayerUID player, name vehicle player] remoteExec ["sql_player_new", 2];
};
isUniqueDone = true;