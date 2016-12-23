/*
Author: Airwarfare
*/
disableSerialization;

fnc_addSpawnPoints = 
compileFinal"
	waitUntil{!isNull (findDisplay 38500)};
	_control = (findDisplay 38500) displayCtrl 1500;
	{
		if(_x select 0 == life_side) then {
			if(parseNumber(_x select 2) <= parseNumber(life_level)) then {
				_text = format[""%1"", _x select 3];
				_index = _control lbAdd _text;
				_pos = _x select 1;
				_data = lbSetData [1500, _index, format[""%1"", _pos]];
				_tooltip = lbSetValue [1500, _index, format[""%1"", _x select 3]];
			};
		};
	} forEach (positions select 0);
";

fnc_updatePos = 
compileFinal"
	_index = _this select 1;
	_pos = lbData [1500, _index];
	_pos = call compile _pos;
	_map = (findDisplay 38500) displayCtrl 2201;
	_map ctrlMapAnimAdd [.5, 0.15, _pos];
	ctrlMapAnimCommit _map;
";
//_pos = call compile _pos;


fnc_spawnPoint = 
compileFinal"
	_index = lbCurSel 1500;
	_pos = lbData [1500, _index];
	_pos = call compile _pos;
	player setPos _pos;
	closeDialog 38500;
";

fnc_player_menu = 
compileFinal"
	[] call fnc_player_menu_st_info;
	[] call fnc_player_menu_staff;
	[] call fnc_player_menu_licenses;
";

fnc_player_menu_st_info = 
compileFinal"
	_control = (findDisplay 40000) displayCtrl 41100;
	_i = 0;
	_text = """";
	{
		_txt = """";
		switch (_i) do {
			case 2: {_txt = format[""Rep: %1<br/>"", playerInfo select 2];};
			case 3: {_txt = format[""Bounty: %1<br/>"", playerInfo select 3];};
			case 4: {_txt = format[""Bank: %1<br/>"", playerInfo select 4];};
			case 5: {_txt = format[""Money: %1<br/>"", playerInfo select 5];};
			case 6: {_txt = format[""DonorLevel: %1<br/>"", playerInfo select 6];};
			case 7: {_txt = format[""LifeLevel: %1<br/>"", playerInfo select 7];};
			case 8: {_txt = format[""Civlevel: %1<br/>"", playerInfo select 8];};
			case 9: {_txt = format[""CopLevel: %1<br/>"", playerInfo select 9];};
			case 10: {_txt = format[""TerrorLevel: %1<br/>"", playerInfo select 10];};
			case 16: {_txt = format[""Playtime: %1<br/>"", playerInfo select 16];};
		};
		_text = _text + _txt;
		_i = _i + 1;
	} forEach playerInfo;
	_control ctrlSetStructuredText parseText _text;
";

fnc_player_menu_staff =
compileFinal"
	_control = (findDisplay 40000) displayCtrl 41001;
	_rank = parseNumber format[""%1"", playerInfo select 11];
	if(_rank == 0) exitWith {_control ctrlSetText """";};
	switch(_rank) do {
		case 1: {_control ctrlSetText ""Mod"";};
		case 2: {_control ctrlSetText ""Admin"";};
		case 3: {_control ctrlSetText ""Superadmin"";};
		case 4: {_control ctrlSetText ""Headadmin"";};
		case 5: {_control ctrlSetText ""Owner"";};
		case 6: {_control ctrlSetText ""Dev"";};
	};
";

fnc_player_menu_licenses = 
compileFinal"
	_e = call compile (playerInfo select 13);
	_control = (findDisplay 40000) displayCtrl 41500;
	{
		_index = _control lbAdd (_x select 0);
	} forEach _e;
";