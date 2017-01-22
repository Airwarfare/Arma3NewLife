/*
Author: Airwarfare
Purpose: Returns all the information about a given player form the Database
Method Signature(UID, ClientID)
*/
_uid = _this select 0;
_clientID = _this select 1;

_query = format["SELECT * FROM playerinfo WHERE UID = '""%1""'", _uid] call sql_async_call;
_query = call compile _query;
_query = (_query select 1) select 0;

_query remoteExec ["fnc_player_query", _clientID];
