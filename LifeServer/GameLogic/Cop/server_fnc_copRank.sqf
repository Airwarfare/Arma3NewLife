/*
Author: Airwarfare
Purpose: Find the rank of a cop and assigns it to them
Method Signature(UID, ClientId)
*/
_uid = _this select 0;
_clientId = _this select 1;
_query = format["SELECT LifeLevel FROM playerinfo WHERE UID = '""%1""'", _uid] call sql_async_call;
_query = call compile _query;
_query = ((_query select 1) select 0) select 0;
_rank = nil;
{
  if(_x select 0 < _query) exitWith {};
  if(_x select 0 > _query) then {
    _rank = _x select 1;
  }
} forEach cop_ranks;
//Return Rank
[_rank] remoteExec ["fnc_cop_ranks", _clientId];
