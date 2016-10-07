/*
Author: Airwarfare
Purpose: Adds a new player to the Database with config values
Method Signature(UID, PlayerName)
*/
diag_log format ["Creating Player"];
_uid = _this select 0;
_name = _this select 1;
_create = "Arma2Net.Unmanaged" callExtension format ["Arma2NETMySQLCommand ['serverlife', 'INSERT INTO playerinfo (UID, PlayerName, Bank, Cash) VALUES ('%1', '%2', '%3', '%4')']", _uid, _name, bank_start, cash_start];