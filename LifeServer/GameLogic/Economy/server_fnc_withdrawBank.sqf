/*
Author: Airwarfare
Purpose: Takes cash from players bank and adds it to local cash
Method Signature(UID, AmountOfMoney, CurrentCash, ClientIds)
*/
_uid = _this select 0;
_amountOfMoney = _this select 1;
_cash = _this select 2;
_clientId = _this select 3;
_query = format["SELECT Bank FROM serverlife.playerinfo WHERE UID = '""%1""'", _uid] call sql_async_call;
_query = call compile _query;
_query = _query select 1;
if(_query >= _amountOfMoney) then {
  _amount = _amountOfMoney + _cash;
  _query = "extDB3" callExtension format["1:SQL:UPDATE playerinfo SET Cash = '%1' WHERE UID = '""%1""'", _uid];
} else {
  ["NOT ENOUGH CASH IN BANK", 0] remoteExec ["fnc_receive_notification", _clientId];
};
