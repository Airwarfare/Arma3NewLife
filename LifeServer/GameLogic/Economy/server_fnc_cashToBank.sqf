/*
Author: Airwafare
Purpose: Takes cash and puts it in a players bank account
Method Signature(UID, AmountOfMoney, CurrentCash, ClientId)
*/
_uid = _this select 0;
_amountOfMoney = _this select 1; //Amount Of money to take from local cash
_cash = _this select 2; //Local Cash
_clientId = _this select 3;
_bankAmount = format["SELECT Bank FROM serverlife.playerinfo WHERE UID = '""%1""'", _uid] call sql_async_call;
_bankAmount = call compile _bankAmount;
_bankAmount = ((_bankAmount select 1) select 0) select 0;
_differnce = _cash - _amountOfMoney;
if(_differnce >= 0) then {
    _banktoAdd = _bankAmount + _amountOfMoney;
    _update = "extDB3" callExtension format["1:SQL:UPDATE playerinfo SET Bank = '%1', Cash = '%2' WHERE UID = '""%3""'", _banktoAdd, _differnce, _uid];
} else {
    ["NOT ENOUGH CASH", 0] remoteExec ["fnc_receive_notification", _clientId];
};
[_uid, _clientId] call sql_player_query;
