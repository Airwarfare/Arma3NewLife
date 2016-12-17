/*
Author: Airwarfare
Purpose: Update a given value on the database
Method Signature(Column, Value, UID)
*/
_column = _this select 0;
_value = _this select 1;
_uid = _this select 2;
_server = _this select 3;
diag_log format ["_value %1", _value];
_update = "Arma2Net.Unmanaged" callExtension format ["Arma2NETMySQLCommand ['serverlife', 'UPDATE %4 SET %1 = '%2' WHERE UID = '%3'']", _column, _value, _uid, _server];
diag_log format ["_update: %1", _update];