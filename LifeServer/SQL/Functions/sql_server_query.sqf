/*
Author: Airwarfare
Purpose: Grab Servervars
*/
_clientID = _this select 0;
_query = "Arma2Net.Unmanaged" callExtension "Arma2NETMySQLCommand ['serverlife', 'SELECT * FROM servervars']";
_query = call compile _query;
_query = (_query select 0) select 0;
//diag_log format["Server: %1", _query];
_query remoteExec ["fnc_server_query", _clientID];