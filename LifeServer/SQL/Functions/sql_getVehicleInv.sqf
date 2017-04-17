/*
Author: Airwarfare
Purpose: Sends all the vehicles a player has in their garage to the client
MethodSignature(ownerUID, ownerID)
*/
_uid = _this select 0;
_ownerID = _this select 1;
_query = format["SELECT * FROM vehiclegarage WHERE ownerUID = '""%1""'", _uid] call sql_async_call;
_query = call compile _query;
_query = (_query select 1);
diag_log _query;
[_query] remoteExec ["fnc_garage_menu_list", _ownerID];