/*
Author: Airwarfare
Purpose: Adds cash to the bank without funds required
Method Signature(UID, AmountToAdd, CurrentBank, GangBool, GangId)
*/
_playerInfo = _this select 0;
_amount = _this select 1;
_bank = _this select 2;
_GangBool = _this select 3;
_GangId = _this select 4;
_add = _amount + _bank;
if not (_GangBool) then {
    _update = "extDB3" callExtension format["1:SQL:UPDATE playerinfo SET Bank = '%1' WHERE UID = '""%2""'", _add, _playerInfo select 0];
} else {
    _update = "extDB3" callExtension format["1:SQL:UPDATE groups SET gangMoney = '%1' WHERE groupID = '%2'", _add, _GangId];
};
[_playerInfo select 0, _playerInfo select 1] call sql_player_query;
