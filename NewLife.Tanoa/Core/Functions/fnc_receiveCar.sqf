/*
Author: Airwarfare
Purpose: Receieves the car object from the server
*/
_carObject = _this select 0;
diag_log format["CarObject: %1", _carObject];

_marker = ["garagespawn"] call fnc_marker_find;
_vehicle = (_carObject select 1) createVehicle getMarkerPos _marker;
_vehicle setDamage parseNumber(_carObject select 2);
_vehicle setVariable ["Owner", _carObject select 6, true];
_vehicle setVehicleLock "LOCKED";
keychain = keychain + [_carObject select 6];