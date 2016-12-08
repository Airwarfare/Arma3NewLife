/*
Author: Airwarfare
Purpose: Grabs the leader of a gang and the gangname
Method Signature(UID, GANGID)
*/
_uid = _this select 0;
_gangId = _this select 1;
_isLeader = false;
_groupmembers = "Arma2Net.Unmanaged" callExtension format ["Arma2NETMySQLCommand ['serverlife', 'SELECT groupMembers FROM groups WHERE groupID = '%1'']", _gangId];
_groupmembers = call compile _groupmembers;
_groupmembers = call compile (((_groupmembers select 0) select 0) select 0);
if(_uid == (_groupmembers select 0)) then {
	_isLeader = true;
};
_player = [_uid] call s_find_player_object;
[_isLeader] remoteExec ["fnc_isGangLeader", owner _player];