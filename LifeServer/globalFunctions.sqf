/*
Author: Airwarfare
*/
//Sql Functions
sql_async_call = compile preprocessFile "LifeServer\SQL\Functions\sql_async_call.sqf";
sql_player_new = compile preprocessFile "LifeServer\SQL\Functions\sql_player_new.sqf";
sql_player_isunique = compile preprocessFile "LifeServer\SQL\Functions\sql_player_isunique.sqf";
sql_player_query = compile preprocessFile "LifeServer\SQL\Functions\sql_player_query.sqf";
sql_generic_update = compile preprocessFile "LifeServer\SQL\Functions\sql_generic_update.sqf";
sql_server_query = compile preprocessFile "LifeServer\SQL\Functions\sql_server_query.sqf";
sql_create_gang = compile preprocessFile "LifeServer\SQL\Functions\sql_create_gang.sqf";
sql_find_gang_leader = compile preprocessFile "LifeServer\SQL\Functions\sql_find_gang_leader.sqf";
sql_gang_add_player = compile preprocessFile "LifeServer\SQL\Functions\sql_gang_add_player.sqf";
sql_license_update = compile preprocessFile "LifeServer\SQL\Functions\sql_license_update.sqf";
sql_pos_query = compile preprocessFile "LifeServer\SQL\Functions\sql_pos_query.sqf";
sql_addVitem = compile preprocessFile "LifeServer\SQL\Functions\sql_addVitem.sqf";
sql_getVitem = compile preprocessFile "LifeServer\SQL\Functions\sql_getVitem.sqf";
sql_private_server_info = compile preprocessFile "LifeServer\SQL\Functions\sql_private_server_info.sqf";



//Economy functions
server_fnc_withdrawBank = compile preprocessFile "LifeServer\GameLogic\Economy\server_fnc_withdrawBank.sqf";
server_fnc_cashToBank = compile preprocessFile "LifeServer\GameLogic\Economy\server_fnc_cashToBank.sqf";
server_fnc_transferToPlayer = compile preprocessFile "LifeServer\GameLogic\Economy\server_fnc_transferToPlayer.sqf";
server_fnc_addToBank = compile preprocessFile "LifeServer\GameLogic\Economy\server_fnc_addToBank.sqf";
server_fnc_addToCash = compile preprocessFile "LifeServer\GameLogic\Economy\server_fnc_cashToBank.sqf";
server_fnc_paychecks = compile preprocessFile "LifeServer\GameLogic\Economy\server_fnc_paychecks.sqf";

//Server Functions
debug = compile preprocessFile "LifeServer\debug.sqf";
s_find_player_object = compile preprocessFile "LifeServer\GameLogic\Functions\s_find_player_object.sqf";
s_spawn_man = compile preprocessFile "LifeServer\GameLogic\Functions\s_spawn_man.sqf";
