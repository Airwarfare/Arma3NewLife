/*
Author: Airwarfare
Purpose: Grab positions from database
Method Signature(ClientID)
*/
_clientID = _this select 0;
_query = "SELECT * FROM serverlife.positions" call sql_async_call;
_query = call compile _query;
_positions = _query select 1;
diag_log "Done";
_positions remoteExec ["fnc_pos_query", _clientID];
