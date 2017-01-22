/*
Author: Airwafare
Purpose: Checks if the player is in the Database already or "unique" and returns the value to the client
Method Signature(UID, ClientID)
*/
_b = false;
_uid = _this select 0;
_clientID = _this select 1;
diag_log "IsUnique";
_query = "";
_query = "SELECT * FROM serverlife.playerinfo" call sql_async_call;
waitUntil{!(_query == "")};
_query call debug;
_query = call compile _query;
_query call debug;
_query = _query select 1;
_query call debug;
{
	if(_x select 0 == _uid) then {
		_b = true;
	};
} forEach _query;
diag_log format ["B: %1", _b];
_b remoteExec ["fnc_isunique", _clientID];
