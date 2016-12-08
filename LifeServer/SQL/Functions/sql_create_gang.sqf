/*
Author: Airwarfare
Purpose: Creates a gang and assigns an id to it
Method Signature(GangName, UID)
*/
_name = _this select 0;
_uid = _this select 1;
_random = floor random[0, 25000, 100000];
_idcheck = "Arma2Net.Unmanaged" callExtension format ["Arma2NETMySQLCommand ['serverlife', 'SELECT groupID FROM groups WHERE groupID = '%1'']", _random];
diag_log format ["ID Check: %1", _idcheck];
diag_log typeName _idcheck;
if(_idcheck == "[[]]") then {
	_gangcheck = "Arma2Net.Unmanaged" callExtension format ["Arma2NETMySQLCommand ['serverlife', 'SELECT groupName FROM groups WHERE groupName = '%1'']", _name];
	if(_gangcheck == "[[]]") then {
		_gangcheck = "";
	} else {
		_gangcheck = (((_gangcheck splitString "[]") select 0) splitString """") select 0;
	};
	if(_gangcheck == "") then {
		_createGang = "Arma2Net.Unmanaged" callExtension format ["Arma2NETMySQLCommand ['serverlife', 'INSERT INTO groups (groupName, groupMembers, groupID) VALUES ('%1', '%2', '%3')']", _name, [_uid], _random];
		["GroupID", _random, _uid, "playerinfo"] call sql_generic_update;
		_player = _uid call s_find_player_object;
		if(!(isNull _player)) then {
			_clientID = owner _player;
			["GANG SUCCESSFULLY CREATED", 2, "GANG NOTIFICATION"] remoteExec ["fnc_receive_notification", _clientID];
			//Money Logic Here
		};
	} else {
		_player = _uid call s_find_player_object;
		if (!(isNull _player)) then {
			_clientID = owner _player;
			["GANG NAME IS TAKEN", 0] remoteExec ["fnc_receive_notification", _clientID];
		};
	};
} else {
	[_name, _uid] call sql_create_gang;
};