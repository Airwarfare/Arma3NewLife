//Config
ServerIsDone = false;
publicVariable "ServerIsDone";
[] execVM "LifeServer\config.sqf";
_script_handle = [] execVM "LifeServer\globalFunctions.sqf";
waitUntil { scriptDone _script_handle };
//MySql
//[] execVM "LifeServer\SQL\init.sqf";

//Nice, This Works!
//Keeping this here for reference
sql_test = {
	uid = _this select 0;
	diag_log format ["UID: %1", uid];
	_create = "Arma2Net.Unmanaged" callExtension format ["Arma2NETMySQLCommand ['serverlife', 'INSERT INTO playerinfo (playername) VALUES ('%1')']", uid];
};

ServerIsDone = true;
publicVariable "ServerIsDone";
diag_log "WTF?";