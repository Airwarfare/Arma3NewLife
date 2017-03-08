/*
Author: Airwarfare
Purpose: Checks if a player owns a type of key
Method Signature(_uid)
*/
_uid = _this select 0;
_isHolder = {
    if(_uid find _x) exitWith {
        true;
    };
} forEach keychain;
_isHolder;