/*
Author: Airwarfare
Purpose: Generic Async call
*/
_customQuery = [_this,0,"",[""]] call BIS_fnc_param;
_key = "extDB3" callExtension format["2:SQL:%1", _customQuery];
_key = call compile format ["%1",_key];
_key = (_key select 1);
_query = "extDB3" callExtension format["5:%1", _key];

if (_query isEqualTo "[3]") then {
    for "_i" from 0 to 1 step 0 do {
        if (!(_query isEqualTo "[3]")) exitWith {};
        _query = "extDB3" callExtension format["5:%1", _key];
    };
};
diag_log _query;
_query;
