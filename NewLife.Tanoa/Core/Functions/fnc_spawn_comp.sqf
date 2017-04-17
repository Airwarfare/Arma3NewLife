_name = _this select 0;
_pos = _this select 1;
_command = _pos + " call " + _name + "_comp";
call compile _command;