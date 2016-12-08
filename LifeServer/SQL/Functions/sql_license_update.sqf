/*
Author: Airwarfare
Purpose: Updates and managers licenses on the database
Method Signature(UID, LicenseArray, IsAdd)
*/
_uid = _this select 0;
_licenseObject = _this select 1;
_isAdd = _this select 2;
_grabPlayerInfo = "Arma2Net.Unmanaged" callExtension format ["Arma2NETMySQLCommand ['serverlife', 'SELECT Licenses FROM playerinfo WHERE uid = '%1'']", _uid];
diag_log format ["_grabPlayerInfo %1 typeName %2", _grabPlayerInfo, typeName _grabPlayerInfo];
_grabPlayerInfo = call compile _grabPlayerInfo;
diag_log format ["_grabPlayerInfo %1 typeName %2", (((_grabPlayerInfo) select 0) select 0) select 0, typeName _grabPlayerInfo];
if((((_grabPlayerInfo) select 0) select 0) select 0 == "") exitWith {
	if(_isAdd) then {
		["Licenses", [_licenseObject], _uid, "playerinfo"] call sql_generic_update;
	};
};
_grabPlayerInfo = call compile (((_grabPlayerInfo select 0) select 0) select 0);
diag_log format ["_grabPlayerInfo %1 typeName %2 Object: %3", _grabPlayerInfo, typeName _grabPlayerInfo, _grabPlayerInfo + [_licenseObject]];
if(_isAdd) then {
	_grabPlayerInfo = _grabPlayerInfo + [_licenseObject];
} else {
	//Arma 3 Is Usefull!!!!!
	_grabPlayerInfo = _grabPlayerInfo - [_licenseObject];
};
diag_log format ["_grabPlayerInfo %1 typeName %2", _grabPlayerInfo, typeName _grabPlayerInfo];
_update = "Arma2Net.Unmanaged" callExtension format ["Arma2NETMySQLCommand ['serverlife', 'UPDATE playerinfo SET Licenses = '%1' WHERE uid = '%2'']", _grabPlayerInfo, _uid];