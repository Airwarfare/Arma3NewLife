/*
Author: Airwafare
Purpose: Checks if the player is in the Database already or "unique" and returns the value to the client
Method Signature(UID, ClientID)
*/
_b = false;
_uid = _this select 0;
_clientID = _this select 1;
_query = "Arma2Net.Unmanaged" callExtension format ["Arma2NETMySQLCommand ['serverlife', 'SELECT * FROM serverlife.playerinfo WHERE UID = '%1'']", _uid];
diag_log format ["Query: %1 Count? %2", _query, Count _query];
if(Count _query != 4) then
{
	_b = true;
};
diag_log format ["B: %1", _b];
_b remoteExec ["fnc_isunique", _clientID];