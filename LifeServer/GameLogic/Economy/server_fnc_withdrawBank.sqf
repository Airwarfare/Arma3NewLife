/*
Author: Airwarfare
Purpose: Takes cash from players bank and adds it to local cash
Method Signature(UID, AmountOfMoney, CurrentCash, ClientIds)
*/
_uid = _this select 0;
_amountOfMoney = _this select 1;
_cash = _this select 2;
_clientId = _this select 3;
_bankAmount = format["SELECT Bank FROM serverlife.playerinfo WHERE UID = '""%1""'", _uid] call sql_async_call;
_bankAmount = call compile _bankAmount;
_bankAmount = ((_bankAmount select 1) select 0) select 0;
if(_bankAmount >= _amountOfMoney) then {
  _amountOfCash = _amountOfMoney + _cash;
  _amountOfBank = _bankAmount - _amountOfMoney;
  _query = "extDB3" callExtension format["1:SQL:UPDATE playerinfo SET Cash = '%1', Bank = '%2' WHERE UID = '""%3""'", _amountOfCash, _amountOfBank, _uid];
} else {
  ["NOT ENOUGH CASH IN BANK", 0] remoteExec ["fnc_receive_notification", _clientId];
};
[_uid, _clientId] call sql_player_query;
