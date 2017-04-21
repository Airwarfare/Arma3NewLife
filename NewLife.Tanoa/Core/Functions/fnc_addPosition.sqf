/*
Author: Airwarfare
Purpose: Adds two positions together
Method(Pos1, Pos2)
*/
_pos = _this select 0;
_pos1 = _this select 1;
diag_log "Fired";
_xValue = (_pos select 0) + (_pos1 select 0);
_yValue = (_pos select 1) + (_pos1 select 1);
_zValue = (_pos select 2) + (_pos1 select 2);
diag_log format["X: %1 Y: %2 Z: %3]", _xValue, _yValue, _zValue];
diag_log format["Pos1: %1", _pos];
diag_log format["Pos2: %1", _pos1];
_return = [_xValue, _yValue, _zValue];
_return;