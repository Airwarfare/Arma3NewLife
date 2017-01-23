/*
Author: Airwarfare
Purpose: Adds a Vitem to the players DB
Method Signature(ItemObject, UID, ClientId)
*/
_ItemObject = _this select 0;
_uid = _this select 1;
_clientId = _this select 2;
_added = false;
_query = format["SELECT Vitems FROM playerInfo WHERE UID = '""%1""'", _uid] call sql_async_call;
//_query = "Arma2Net.Unmanaged" callExtension format ["Arma2NETMySQLCommand ['serverlife', 'SELECT Vitems FROM playerInfo WHERE UID = '%1'']", _uid];
waitUntil{!_query == ""};
_query = call compile _query;
diag_log format ["RawQuery %1 %2", _query, typeName _query];
_query = ((_query select 1) select 0) select 0;
_int = 0;
{
    if((_x select 0) == (_ItemObject select 0)) then {
        _added = true;
        _query set [_int, [_ItemObject select 0, format["%1", (_x select 1) + (_ItemObject select 1)]]];
    };
    _int = _int + 1;
} forEach _query;
if(!_added) then {
    _query = _query + [_ItemObject];
};

diag_log format ["Vitem: %1 typeName %2", _query, typeName _query];
//Thinks comas seperate columns but somehow this works on other arrays but not this one?
//Fucking Arma2Net
_update = "extDB3" callExtension format["2:SQL:UPDATE playerinfo SET Vitems = '%1' WHERE UID = '""%2""'", _query, _uid];
diag_log format ["Error: %1", _update];
//["Vitems", format["%1",_query], _uid, "playerInfo", _clientId] call sql_generic_update;
