/*
Author: Airwarfare
Purpose: Creates a gang and assigns an id to it
Method Signature(GangName, UID)
*/
_name = _this select 0;
_uid = _this select 1;
_random = floor random[0, 25000, 100000];
_idcheck = format["SELECT groupID FROM groups WHERE groupID = '%1'", _random] call sql_async_call;
if(_idcheck == "[1,[]]") then {
	_gangcheck = format["SELECT groupName FROM groups WHERE groupName = '%1'", _name] call sql_async_call;
	if(_gangcheck == "[1,[]]") then {
		_gangcheck = "";
	} else {
		_gangcheck = call compile _gangcheck;
		_gangcheck = (_gangcheck select 1) select 0;
	};
	if(_gangcheck == "") then {
		_createGang = "extDB3" callExtension format["1:SQL:INSERT INTO groups (groupName, groupMembers, groupID) VALUES ('%1', '%2', '%3')", _name, [_uid], _random];
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
