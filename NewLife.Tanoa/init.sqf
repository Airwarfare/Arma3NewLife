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
diag_log "HERE";
0 cutText ["","BLACK IN"];
_uid = getPlayerUID player;
_name = name vehicle player;
_mission = [] execVM "missionVars.sqf";
waitUntil { scriptDone _mission };
[] execVM "config.sqf";
[] call compile preprocessFileLineNumbers "Core\Functions\func.sqf";
[] execVM "Core\init.sqf";

diag_log format ["This is the client!"];

[_uid, owner player] remoteExec ["sql_player_isunique", 2];
[_uid, owner player] remoteExec ["sql_player_query", 2];
[owner player] remoteExec ["sql_server_query", 2];
["LifeLevel", 20, _uid, "playerinfo"] remoteExec ["sql_generic_update", 2];
//["Licenses", ["Testing how arrays work", 20, "20"], _uid] remoteExec ["sql_generic_update", 2];
