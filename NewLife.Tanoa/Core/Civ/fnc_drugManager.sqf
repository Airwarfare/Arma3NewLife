/*
Author: Airwarfare
Purpose: Does everything drug related
Method Signature
*/
_drug = _this select 0;
_negative = _this select 1;
_random = floor(random[1,3,10]) + 1;
if(!(isNil _negative)) then {
    _random = _random * -1;
};
[[_drug, _random], getPlayerUID player, owner player] remoteExec ["sql_addVitem", 2];