/*
Author: Airwarfare
Purpose: Adds a new player to the Database with config values
Method Signature(UID, PlayerName)
*/
diag_log format ["Creating Player"];
_uid = _this select 0;
_name = _this select 1;
_create = "extDB3" callExtension format["1:SQL:INSERT INTO playerinfo (UID, PlayerName, Bank, Cash, LifeLevel, CivLevel, CopLevel, TerrorLevel) VALUES ('""%1""', '""%2""', '%3', '%4', '%5', '%6', '%7', '%8')", _uid, _name, bank_start, cash_start, [1, 0], [1,0], [1,0], [1,0]];