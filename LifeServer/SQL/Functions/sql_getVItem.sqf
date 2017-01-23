/*
Author: Airwarfare
Purpose: Checks and grabs a given VItem from the database
Method Signature(UID, ItemName, ClientID)
*/
_uid = _this select 0;
_itemName = _this select 1;
_clientId = _this select 2;
_query = format["SELECT Vitems FROM playerinfo WHERE uid = '""%1""'", _uid] call sql_async_call;
_query = call compile _query;
_query = ((_query select 1) select 0) select 0;
_return = nil;
{
    if(_x select 0 == _itemName) then {
        _return = _x;
    };
} forEach _query;
//passback _return
