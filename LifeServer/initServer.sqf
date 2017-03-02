//Config
ServerIsDone = false;
publicVariable "ServerIsDone";
[] execVM "LifeServer\config.sqf";
_script_handle = [] execVM "LifeServer\globalFunctions.sqf";
waitUntil { scriptDone _script_handle };

_result = "extDB3" callExtension "9:ADD_DATABASE:ServerLife";
diag_log _result;
sleep .02;
_query = "extDB3" callExtension "9:ADD_DATABASE_PROTOCOL:ServerLife:SQL:SQL";
[] call sql_private_server_info;
ServerIsDone = true;
publicVariable "ServerIsDone";
[] call s_spawn_man;
//Start Paychecks
[] call server_fnc_paychecks;