/*
Author: Airwarfare
Purpose: Adds player to database for a given gang ID
Method Signature(UID, GANGID)
*/
_uid = _this select 0;
_gangId = _this select 1;
_getArray = format["SELECT groupMembers FROM groups WHERE groupID = '%1'", _gangId] call sql_async_call;
_getArray = "Arma2Net.Unmanaged" callExtension format ["Arma2NETMySQLCommand ['serverlife', 'SELECT groupMembers FROM groups WHERE groupID = '%1'']", _gangId];
diag_log format ["_getArray %1", _getArray];
_getArray = call compile _getArray;
_getArray = (((_getArray select 1) select 0) select 0);
_getArray = _getArray + [_uid];
_update = "extDB3" callExtension format["1:SQL:UPDATE groups SET groupMembers = '%1' WHERE groupID = '%2'", _getArray, _gangId];
_update2 = "extDB3" callExtension format["1:SQL:UPDATE playerinfo SET GroupID = '%1' WHERE UID = '%2'", _gangId, _uid];
