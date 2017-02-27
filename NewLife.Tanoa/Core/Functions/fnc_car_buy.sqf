disableSerialization;
_control = (findDisplay 50000) displayCtrl 1500;
_index = lbCurSel _control;
_array = lbData [1500, _index];
_vehicleClass = _array select 1;
_marker = ["carspawn"] call fnc_marker_find;
if(_marker == nil) then {
    diag_log format["Marker Error"];
};

//Do bank functions







_vehicle = _vehicleClass createVehicle getMarkerPos _marker;