/*
Author: Airwarfare
Purpose: Adds cash to the bank without funds required
Method Signature(UID, AmountToAdd, CurrentLocalCash)
*/
_playerInfo = _this select 0;
_amount = _this select 1;
_cash = _this select 2;
_add = _amount + _cash;
_update = "extDB3" callExtension format["1:SQL:UPDATE playerinfo SET Cash = '%1' WHERE UID = '""%2""'", _add, _playerInfo select 0];
[_playerInfo select 0, _playerInfo select 1] call sql_player_query;
