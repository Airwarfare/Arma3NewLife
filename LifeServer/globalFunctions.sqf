/*
Author: Airwarfare
*/
//Sql Functions
sql_player_new = compile preprocessFile "LifeServer\SQL\Functions\sql_player_new.sqf";
sql_player_isunique = compile preprocessFile "LifeServer\SQL\Functions\sql_player_isunique.sqf";
sql_player_query = compile preprocessFile "LifeServer\SQL\Functions\sql_player_query.sqf";
sql_generic_update = compile preprocessFile "LifeServer\SQL\Functions\sql_generic_update.sqf";
sql_server_query = compile preprocessFile "LifeServer\SQL\Functions\sql_server_query.sqf";
sql_create_gang = compile preprocessFile "LifeServer\SQL\Functions\sql_create_gang.sqf";
sql_find_gang_leader = compile preprocessFile "LifeServer\SQL\Functions\sql_find_gang_leader.sqf";
sql_gang_add_player = compile preprocessFile "LifeServer\SQL\Functions\sql_gang_add_player.sqf";
sql_license_update = compile preprocessFile "LifeServer\SQL\Functions\sql_license_update.sqf";

//Server Functions

s_find_player_object = compile preprocessFile "LifeServer\GameLogic\Functions\s_find_player_object.sqf";