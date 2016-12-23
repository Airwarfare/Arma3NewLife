/*
Author: Airwarfare
Purpose: Dynamically Adds Objects to npcs
Method Signature(Object(NPC))
*/
_object = _this select 0;
_a = [];
{
	diag_log format["_x %1 type %2", _x, typeName _x];
	_b = false;
	{
		diag_log format ["_x %1 type %2", _x, typeName _x];
		if(_x == "DMV") then {
			_b = true;
		};
	} forEach (_x select 3);
	if(_b) then {
		_a = _a + [_x];
	};
} forEach life_licenses;
{
	_checking = [_x select 0] call fnc_hasLicense;
	if(!_checking) then {
		_object addAction [format["<t color='#e53935'>Buy %1 $%2</t>", _x select 0, _x select 1],{},[],1,false,false,"","",4];
	};
} forEach _a;