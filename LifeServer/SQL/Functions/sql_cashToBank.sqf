/*
Author: Airwafare
Purpose: Takes cash and puts it in a players bank account
Method Signature(UID, AmountOfMoney, CurrentCash, ClientId)
*/
_uid = _this select 0;
_amountOfMoney = _this select 1;
_cash = _this select 2;
_clientId = _this select 3;
_differnce = _cash - _amountOfMoney;
if(_differnce > 0) then {
  _update = "extDB3" callExtension format["UPDATE playerinfo SET Bank = '%1' WHERE UID = '""%1""'", _cash, _uid];
} else {
  ["NOT ENOUGH CASH", 0] remoteExec ["fnc_receive_notification", _clientId];
};
