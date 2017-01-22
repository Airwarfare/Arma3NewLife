/*
Author: Airwarfare
Purpose: Debug Easy
Method Signature(Value)
*/
_message = [_this,0,"",[""]] call BIS_fnc_param;
diag_log format ["DEBUG: VALUE: %1 TYPE: %2", _message, typeName _message];
