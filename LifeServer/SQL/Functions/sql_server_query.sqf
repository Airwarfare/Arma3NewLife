/*
Author: Airwarfare
Purpose: Grab Servervars
*/
_clientID = _this select 0;
//_query = "Arma2Net.Unmanaged" callExtension "Arma2NETMySQLCommand ['serverlife', 'SELECT * FROM servervars']";
_query = "SELECT * FROM servervars" call sql_async_call;
diag_log "Server Query";
_query = call compile _query;
_query = _query select 1;
diag_log format["Server: %1", _query];
_query remoteExec ["fnc_server_query", _clientID];
