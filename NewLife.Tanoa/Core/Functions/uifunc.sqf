/*
Author: Airwarfare
*/
disableSerialization;

fnc_addSpawnPoints =
compileFinal"
	diag_log ""SpawnPoints"";
	diag_log format[""positions %1 | %2"", positions, typeName positions];
	waitUntil{!isNull (findDisplay 38500)};
	_control = (findDisplay 38500) displayCtrl 1500;
	{
		diag_log format[""Foreach %1 | %2"", _x select 0, typeName (_x select 0)];
		if(_x select 0 == life_side) then {
			if(_x select 2 <= life_level) then {
				_text = format[""%1"", _x select 3];
				_index = _control lbAdd _text;
				_pos = _x select 1;
				_data = lbSetData [1500, _index, format[""%1"", _pos]];
				_tooltip = lbSetValue [1500, _index, format[""%1"", _x select 3]];
			};
		};
	} forEach positions;
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
	_e = playerInfo select 13;
	_control = (findDisplay 40000) displayCtrl 41500;
	{
		_index = _control lbAdd (_x select 0);
	} forEach _e;
";



fnc_car_buy_menu = 
compileFinal"
	if(isNull(findDisplay 50000)) then {
    	_ok = createDialog ""car_shop"";
	};
	_cars = [];
	{
		_valid = false;
		{
			if(_x == ""CarShop"") then {
				_valid = true;
			};
		} forEach (_x select 3);
		diag_log _valid;
		if(_valid) then {
			_cars = _cars + [_x];
		};
	} forEach car_config;

	_control = (findDisplay 50000) displayCtrl 1500;
	_count = 0;
	{
		_text = format[""%1"", _x select 0];
		_index = _control lbAdd _text;
		_data = lbSetData [1500, _index, _x select 1];
		_count = _count + 1;
	} forEach _cars;
";


fnc_atm_menu =
compileFinal"
	if(isNull(findDisplay 39000)) then {
		_ok = createDialog ""ATMBank"";
	};
	_bankAmount = (findDisplay 39000) displayCtrl 1001;
	_cashAmount = (findDisplay 39000) displayCtrl 1000;
	_bankAmount ctrlSetText format[""$%1"", playerInfo select 4];
	_cashAmount ctrlSetText format[""$%1"", playerInfo select 5];
";

fnc_atm_buttons =
compileFinal"
	TickTime1 = diag_tickTime;
	_type = _this select 0;
	_control = (findDisplay 39000) displayCtrl 1400;
	_amount = ctrlText _control;
	_amount = parseNumber(_amount);
	if(_type == 0) then {
		_cash = playerInfo select 5;
		if(_amount <= _cash) then {
			[getPlayerUID player, _amount, _cash, owner player] remoteExec [""server_fnc_cashToBank"", 2];
			_bankAmount = (findDisplay 39000) displayCtrl 1001;
			_cashAmount = (findDisplay 39000) displayCtrl 1000;
			_b = playerInfo select 4;
			_c = playerInfo select 5;
			_bankAmount ctrlSetText format[""$%1"", (_b + _amount)];
			_cashAmount ctrlSetText format[""$%1"", (_c - _amount)];
		} else {
			[""NOT ENOUGH CASH"", 0] call fnc_receive_notification;
		};
	}
	else
	{
		_bank = playerinfo select 4;
		_cash = playerInfo select 5;
		if(_amount <= _bank) then {
			[getPlayerUID player, _amount, _cash, owner player] remoteExec [""server_fnc_withdrawBank"", 2];
			_bankAmount = (findDisplay 39000) displayCtrl 1001;
			_cashAmount = (findDisplay 39000) displayCtrl 1000;
			_b = playerInfo select 4;
			_c = playerInfo select 5;
			_bankAmount ctrlSetText format[""$%1"", (_b - _amount)];
			_cashAmount ctrlSetText format[""$%1"", (_c + _amount)];
		} else {
			[""NOT ENOUGH MONEY IN THE BANK"", 0] call fnc_receive_notification;
		};
	};
";