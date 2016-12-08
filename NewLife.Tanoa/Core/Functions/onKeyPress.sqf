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
		_uid = getPlayerUID player;
		["KKK", _uid] remoteExec ["sql_create_gang", 2];
		diag_log "Pressed Y WTF?";
		_handled = true;
	};
	//H
	case 35:
	{
		_uid = getPlayerUID player;
	};
	//F2 Debug
	case 60:
	{
		_uid = getPlayerUID player;
		[_uid, (life_licenses select 0), true] remoteExec ["sql_license_update", 2];
	};
};
_handled;