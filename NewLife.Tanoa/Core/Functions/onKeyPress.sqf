_handled = false;
switch(_this select 1) do
{
	//T Key
	case 20:
	{
		hint "Menu?";
		_ok = createDialog "spawn_menu";
		_handled = true;
	};
	//O Key
	case 24:
	{
		hint "O";
		0 cutRsc ["playerHUD","PLAIN"];
		_handled = true;
	};
	//Y
	case 21:
	{
		if(isNull(findDisplay 40000)) then {
			_ok = createDialog "player_menu";
			[] call fnc_player_menu;
		};
	};
	//U
	case 22:
	{
		_veh = nil;
		_var = "";
		if (isNull objectParent player) then {
				diag_log "_veh";
                _veh = cursorTarget;
		} else {
                _veh = vehicle player;
		};
		_var = _veh getVariable "Owner";
		//diag_log format["Veh: %1 Var: %2", _veh, _var];
		if(_var == "") exitWith {};
		_isOwner = false;
		{
			//diag_log format["_x: %1 _var: %2", _x, _var];
			if(_x find getPlayerUID player != -1 && _x == _var) then {
				diag_log "FoundKey";
				_isOwner = true;
			};
		} forEach keychain;
		//diag_log format["ISOwner: %1", _isOwner];
		if(_isOwner) then {
			_lockState = locked _veh;
			//diag_log _lockState;
			switch(_lockState) do
			{
				case 0: {_veh setVehicleLock "LOCKED"; systemChat "Vehicle Locked";};
				case 2: {_veh setVehicleLock "UNLOCKED"; systemChat "Vehicle Unlocked";};
			};
		};
	};
	//
	//H
	case 35:
	{
		[["Gold", 2], getPlayerUID player, clientOwner] remoteExec ["sql_addVitem", 2];
	};
	//F2 Debug
	/*
	case 60:
	{
		hint format["array %1", playerInfo select 13];
		_uid = getPlayerUID player;
		[_uid, (life_licenses select 1), true, clientOwner] remoteExec ["sql_license_update", 2];
	};*/
	//SHIFTL
	case 42:
	{
		_vehicle = vehicle player;
		if(_vehicle != player) then {
			_vel = velocity _vehicle;
			_dir = direction _vehicle;
			_speed = 0.3;
			_vehicle setVelocity [
				(_vel select 0) + (sin _dir * _speed),
				(_vel select 1) + (cos _dir * _speed),
				(_vel select 2)];
		};
	};
	//CTRL L
	case 29:
	{
		_vehicle = vehicle player;
		if(_vehicle != player) then {
			_vel = velocity _vehicle;
			_dir = direction _vehicle;
			if(_vel select 0 < 0) exitWith {};
			_speed = 1;
			_vehicle setVelocity [
				(_vel select 0) - (sin _dir * _speed),
				(_vel select 1) - (cos _dir * _speed),
				(_vel select 2)];
		};
	};

	case 219:
	{
		if(CanDrug select 0) then {
			[CanDrug select 1] call fnc_drugManager;
			player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
		};
	};
};
_handled;
