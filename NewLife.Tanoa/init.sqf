if(isServer) exitWith
{
	[] execVM "LifeServer\initServer.sqf";
	diag_log format ["This is the server"];
};
0 cutText["Server Initializing....", "BLACK FADED"];
0 cutFadeOut 9999999;
waitUntil {!isNull player && player == player};
diag_log format ["ServerIsLoading: %1", ServerIsDone];
waitUntil {ServerIsDone};
0 cutText ["","BLACK IN"];
0 cutText["Client Initializing....", "BLACK FADED"];
0 cutFadeOut 9999999;
diag_log "HERE";
_uid = getPlayerUID player;
_name = name vehicle player;
_mission = [] execVM "missionVars.sqf";
_side = side player;

//Testing
waitUntil { scriptDone _mission };
[] execVM "config.sqf";
switch(_side) do
{
	case west:
	{
		life_side = life_sides select 0;
	};
	case civilian:
	{
		life_side = life_sides select 1;
	};
};
[] call compile preprocessFileLineNumbers "Core\Functions\func.sqf";
[] execVM "Core\init.sqf";
//Idk if I really need this file but yolo
diag_log "Core.init.sqf.init";
waitUntil {!(isNull (findDisplay 46))};

(findDisplay 46) displayAddEventHandler ["KeyDown", "_this call fnc_key_press"];
//_ok = createDialog "spawn_menu";
0 cutText ["", "BLACK IN"];
diag_log format ["This is the client!"];

[_uid, owner player] remoteExec ["sql_player_isunique", 2];
_server = [_uid, owner player] remoteExec ["sql_player_query", 2];
sleep 2;
[_uid] remoteExec ["sql_pos_query", 2];
[owner player] remoteExec ["sql_server_query", 2];
["LifeLevel", 20, _uid, "playerinfo"] remoteExec ["sql_generic_update", 2];
[] call fnc_getShops;
//["Licenses", ["Testing how arrays work", 20, "20"], _uid] remoteExec ["sql_generic_update", 2];
