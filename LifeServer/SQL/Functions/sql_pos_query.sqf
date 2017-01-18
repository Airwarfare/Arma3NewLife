/*
Author: Airwarfare
Purpose: Grab positions from database
Method Signature(ClientID)
*/
_clientID = _this select 0;
_positions = "Arma2Net.Unmanaged" callExtension format ["Arma2NETMySqlCommand ['serverlife', 'SELECT * FROM serverlife.positions']"];
_positions = call compile _positions;
_positions remoteExec ["fnc_pos_query", _clientID];