disableSerialization;
_control = (findDisplay 50000) displayCtrl 1500;
_index = lbCurSel _control;
_array = lbData [1500, _index];
_vehicleClass = _array select 1;
_marker = ["carspawn"] call fnc_marker_find;
if(_marker == nil) then {
    diag_log format["Marker Error"];
};
_carObject = nil;
{
    if(_x select 1 == _vehicleClass) then {
        _carObject = _x;
    };
} forEach car_config;
//Do bank functions

if((playerInfo select 4) >= (_carObject select 2)) then {
    [-(_carObject select 2)] call fnc_update_bank_value;
    _keyValue = ["generate"] call fnc_keyManager;
    _vehicle = _vehicleClass createVehicle getMarkerPos _marker;
    _vehicle setVariable ["Owner", _keyValue, true];
};