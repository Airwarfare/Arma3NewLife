_name = _this select 0;
_pos = _this select 1;
diag_log format["Position1: %1", _pos];
_command = "[" + format["%1", _pos] + "] call " + _name + "_comp";
call compile _command;