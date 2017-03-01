/*
Author: Airwarfare
Purpose: Grabs the info out of the serverInfo table
*/
_value = ["SELECT * FROM serverinfo"] call sql_async_call;
_value = call compile _value;
server_info = _value;