/*
Author: Airwafare
Purpose: Takes cash and puts it in a players bank account
Method Signature(UID, AmountOfMoney, CurrentCash)
*/
_uid = _this select 0;
_amountOfMoney = _this select 1;
_cash = _this select 2;
_differnce = _cash - _amountOfMoney;
if(_differnce > 0) then {
  _update = "extDB3" callExtension format["UPDATE playerinfo SET Bank = '%1' WHERE UID = '""%1""'", _cash, _uid];
};
