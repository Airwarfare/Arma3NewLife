while {true} do
{
	//Tracks the playtime(maybe used for rewards? or time unlocks!)
	sleep 60;
	_currentPlay = playerInfo select 15;
	_currentPlay = _currentPlay + 60;
	["Playtime", _currentPlay, getPlayerUID player, "playerInfo"] remoteExec ["sql_generic_update", 2];
};