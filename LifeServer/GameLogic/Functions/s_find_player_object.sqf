/*
Author: Airwarfare
Purpose: Grab the player object from a UID (Mainly for owner player)
Method Signature(UID)
*/
private["_player"];
_player = objNull;
{
	if(getPlayerUID _x == _this select 0) exitWith {
		_player = _x;
	};
} forEach allUnits;
diag_log format ["PlayerObject: %1", _player];
_n = typeName _player;
diag_log _n;
_player;