/*
Author: Airwarfare
Purpose: Converts side names to real ones
Method Signature: SideName
*/
_sideName = _this select 0;
diag_log format["%1 TYPE: %2", _this select 0, typeName(_this select 0)];
_return = nil;
switch (_sideName) do {
    case west: { _return = "BLUFOR";};
    case civilian: { _return = "CIV";};
    case resistance: { _return = "MEDIC";};
    case east: { _return = "TERROR";};
};
_return