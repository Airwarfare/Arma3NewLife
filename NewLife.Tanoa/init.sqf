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
_config = [] execVM "Config\configInit.sqf";
_side = side player;
TickTime1 = nil;
TickTime2 = nil;
//Testing
waitUntil { scriptDone _mission };
[] execVM "config.sqf";
[clientOwner] remoteExec ["sql_server_query", 2];
switch(_side) do
{
	case west:
	{
		life_side = life_sides select 0;
		player setUnitTrait ["Medic", false];
	};
	case civilian:
	{
		life_side = life_sides select 1;
		player setUnitTrait ["Medic", false];
	};
	case resistance:
	{
		life_side = life_sides select 3;
		player setUnitTrait ["Medic", true];
	};
};
//[] call compile preprocessFileLineNumbers "Core\Functions\func.sqf";
_script_handle = [] execVM "Core\Functions\globalFunctions.sqf";
[] call compile preprocessFileLineNumbers "Core\Functions\uifunc.sqf";
waitUntil { scriptDone _script_handle };
[] call fnc_isRebel;
waitUntil {!(isNull (findDisplay 46))};

(findDisplay 46) displayAddEventHandler ["KeyDown", "_this call fnc_key_press"];
player addEventHandler ["Fired", "_this call fnc_safezone"];
//_ok = createDialog "spawn_menu";
0 cutText ["", "BLACK IN"];
diag_log format ["This is the client!"];

[_uid, clientOwner] remoteExec ["sql_player_isunique", 2];
waitUntil { isUniqueDone };
_server = [_uid, clientOwner] remoteExec ["sql_player_query", 2];
[clientOwner] remoteExec ["sql_pos_query", 2];
sleep .15;
[] call fnc_getShops;
0 cutText["Setting Up Vars.....", "BLACK FADED"];
0 cutFadeOut 9999999;
sleep 1;
waitUntil{ posQuery };
sleep 0.1;
0 cutText ["","BLACK IN"];
//38500
_ok = createDialog "spawn_menu";
[] call fnc_addSpawnPoints;
[] call fnc_DLCvalidation;
[] call fnc_rebelAction;
sleep 4;
[] execVM "Core\init.sqf";