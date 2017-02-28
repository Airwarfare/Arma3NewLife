/*
Author: Airwarfare
Purpose: Updates Bank Value in Database
Method Signature(Value)
*/
_value = _this select 0;
_u = (playerInfo select 4) + _value;
if(_u < 0) then {
	_u = 0;
};
["Bank", _u, getPlayerUID player, "playerinfo", owner player] remoteExec ["sql_generic_update", 2];