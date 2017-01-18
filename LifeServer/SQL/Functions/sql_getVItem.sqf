/*
Author: Airwarfare
Purpose: Checks and grabs a given VItem from the database
Method Signature(UID, ItemName, ClientID)
*/
_uid = _this select 0;
_itemName = _this select 1;
_clientId = _this select 2;
_query = "Arma2Net.Unmanaged" callExtension format ["Arma2NETMySQLCommand ['serverlife', 'SELECT Vitems FROM playerinfo WHERE uid = '%1'']", _uid];
_query = call compile _query;
