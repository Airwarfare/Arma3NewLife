/*
Author: Airwarfare
Purpose: Checks if player has a licenses or not
Method Signature("NameOfLicense")
*/
_bool = false;
diag_log format["PlayerInfo:13 %1 | %2", playerInfo select 13, typeName (playerInfo select 13)];
_array = playerInfo select 13;
_name = _this select 0;
{
	if((_x select 0) == _name) then {
		_bool = true;
	};
} forEach _array;
_bool
