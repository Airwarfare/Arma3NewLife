/*
Author: Airwarfare
Purpose: Removes people if they are not a certain faction
Method Signature
*/
_faction = _this select 0;
_radiusOfTrigger = _this select 1;
_position = _this select 2;
_playerPos = position player;
diag_log "Here";
if(side player != _faction) then {
    _Ax = (_position select 0);
    _Bx = (_playerPos select 0);
    _Ay = (_position select 1);
    _By = (_playerPos select 1);
    //Because _x is magic variable
    _xVar = _Ax + (_radiusOfTrigger + 5) * ((_Bx - _Ax) / sqrt ((_Bx - _Ax)^2 + (_By - _Ay)^2));
    _y = _Ay + (_radiusOfTrigger + 5) * ((_By - _Ay) / sqrt ((_Bx - _Ax)^2 + (_By - _Ay)^2));
    diag_log format["%1 %2 %3", _xVar, _y, _playerPos select 2];
    player setPos [_xVar, _y, _playerPos select 2];
};