/*
Author: Airwarfare
Purpose: Finds the closest marker of a given name
Method Signature("Name")
*/
_name = _this select 0;
_marker = nil;
{
    diag_log format["Current Marker: %1", _x];
    if((_x find _name) != - 1) then {
        _mPos = getMarkerPos _x;
        _distance = player distance2d _mPos;
        if(_distance <= 30) then {
            _marker = _x;
        };
    };
} forEach allMapMarkers;
diag_log format["Marker %1", _marker];
_marker;