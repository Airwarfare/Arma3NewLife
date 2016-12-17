/*
Author: Airwarfare
Purpose: Updates and managers licenses on the database
Method Signature(UID, LicenseArray, IsAdd, ClientId)
*/
_uid = _this select 0;
_licenseObject = _this select 1;
_isAdd = _this select 2;
_clentId = _this select 3;
_dup =  false;
_grabPlayerInfo = "Arma2Net.Unmanaged" callExtension format ["Arma2NETMySQLCommand ['serverlife', 'SELECT Licenses FROM playerinfo WHERE uid = '%1'']", _uid];
_grabPlayerInfo = call compile _grabPlayerInfo;
_grabPlayerInfo = ((_grabPlayerInfo select 0) select 0) select 0;
_grabPlayerInfo = call compile _grabPlayerInfo;
{
	if(_x select 0 == _licenseObject select 0) then {
		_dup = true;
	};
} forEach _grabPlayerInfo;
if((!_dup) or (!_isAdd)) then {
	if(_isAdd) then {
		_grabPlayerInfo = _grabPlayerInfo + [_licenseObject];
	} else {
		_grabPlayerInfo = _grabPlayerInfo - [_licenseObject];	
	};
	_update = "Arma2Net.Unmanaged" callExtension format ["Arma2NETMySQLCommand ['serverlife', UPDATE playerinfo SET Licenses = '%1' WHERE UID = '%2'']", _grabPlayerInfo, _uid];
	[_uid, _clentId] call sql_player_query;
};