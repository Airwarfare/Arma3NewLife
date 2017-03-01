/*
Author: Airwarfare
Purpose: Update a given value on the database
Method Signature(Column, Value, UID, Server, ClientID)
*/
_column = _this select 0;
_value = _this select 1;
_uid = _this select 2;
_server = _this select 3;
_clientid = _this select 4;
diag_log format ["_value %1", _value];
_update = "extDB3" callExtension format["1:SQL:UPDATE %4 SET %1 = '%2' WHERE UID = '""%3""'", _column, _value, _uid, _server];
diag_log format ["_update: %1", _update];
[_uid, _clientid] call sql_player_query;
