/*
Author: Airwarfare
Purpose: Checks if player has a licenses or not
Method Signature("NameOfLicense")
*/
_bool = false;
_array = call compile (playerInfo select 13);
_name = _this select 0;
{
	if((_x select 0) == _name) then {
		_bool = true;
	};
} forEach _array;
_bool