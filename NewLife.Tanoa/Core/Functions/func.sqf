/*
Author: Airwarfare
*/

//Return func from isunique on the server, if they are not unique we will make a new player entry!
//Takes a bool value
fnc_isunique =
compileFinal "
	player_unique = _this;
	diag_log format [""Bool? %1"", player_unique];
	if(!player_unique) then
	{
		[[getPlayerUID player, name vehicle player],""sql_player_new"", false] call BIS_fnc_MP;
	};	
";
//Update the var "playerInfo" which is a global var with an array of player elements
//Takes a query type
fnc_player_query = 
compileFinal "
	playerInfo = _this;
	diag_log format [""playerInfo: %1 UID: %2"", playerInfo, playerInfo select 0];
	if(isNil ""life_level"") then {
		[] call fnc_player_update_life_levels;
	};
";

fnc_pos_query = 
compileFinal "
	positions = _this;
";

fnc_player_update_life_levels = 
compileFinal "
	life_level = playerInfo select 7;
	life_civ_level = playerInfo select 8;
	life_cop_level = playerInfo select 9;
	life_terror_level = playerInfo select 10;
	life_vip_level = playerInfo select 6;
	diag_log format [""life_level: %1, life_civ_level: %2, life_cop_level: %3, life_terror_level: %4, life_vip_level: %5"", life_level, life_civ_level, life_cop_level, life_terror_level, life_vip_level];
";


//Update staff rank with perms
//Takes int
fnc_update_staff_rank = 
compileFinal "
	_int = _this select 0;
	switch(_int) do {
	case 1: {};//mod
	case 2: {}; //admin
	case 3: {}; //superadmin
	case 4: {}; //Headadmin
	case 5: {}; //Owner
	case 6: {}; //Dev
	default {};//nothing			
";
//Adds(or subtracts if negative) a value from the players bank!
fnc_update_bank_value = 
compileFinal "
	_value = _this select 0;
	_u = (playerInfo select 4) + _value;
	if(_u < 0) then {
		_u = 0;
	};
	[""Bank"", _u, getPlayerUID player, ""playerinfo""] remoteExec [""sql_generic_update"", 2];
";

fnc_server_query =
compileFinal "
	serverInfo = _this;
	life_mainbank = serverInfo select 0;
";

fnc_key_press = 
compileFinal"
	pressed = compile preprocessFile ""Core\Functions\onKeyPress.sqf"";
	_this call pressed;
";

/*
Uses notifications from Arma to display to player
Method Signature(Message, Format(int), Title)
Format 0 = Error Format
Format 1 = Default Format
Format 2 = Complete Format
*/
fnc_receive_notification = 
compileFinal"
	_message = _this select 0;
	_format = _this select 1;
	_title = _this select 2;
	switch (_format) do {
		case 0:
		{
			[""Error"", [_message]] call bis_fnc_showNotification;
		};
		case 1:
		{
			[""Default"", [_message]] call bis_fnc_showNotification;
		};
		case 2:
		{
			[""Complete"", [_title, _message]] call bis_fnc_showNotification;
		};
	};
";

fnc_isGangLeader = 
compileFinal"
	gang_isLeader = _this select 0;
";