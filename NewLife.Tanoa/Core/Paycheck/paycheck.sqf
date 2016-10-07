while {true} do
{
	sleep life_paycheck_interval;
	[life_paycheck] call fnc_update_bank_value;
	if(side player == west) then {
		//Subtract amout from federal reserve
		["mainbank", (serverInfo select 0) - life_paycheck, getPlayerUID player, "servervars"] remoteExec ["sql_generic_update", 2];
	};
};