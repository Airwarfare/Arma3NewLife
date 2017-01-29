/*
Author: Airwarfare
Purpose: Gives paychecks every x seconds
*/
while {true} do
{
    sleep paycheck_interval;
    {
        if(isPlayer _x) then {
            _uid = getPlayerUID _x;
            _query = format["SELECT Bank FROM playerInfo WHERE UID = '""%1""'", _uid];
            _query = call compile _query;
            _query = _query select 1;
            _clientId = owner _x;
            switch(side _x) do {
                case civilian: {
                    [_uid, civ_paycheck, _query] call server_fnc_addToBank;
                    [format["Paycheck recieved, you got $%1", civ_paycheck], 2] remoteExec ["fnc_receive_notification", _clientId];
                };
                case west: {
                    [_uid, cop_paycheck, _query] call server_fnc_addToBank;
                    [format["Paycheck recieved, you got $%1", cop_paycheck], 2] remoteExec ["fnc_receive_notification", _clientId];
                };
                case resistance: {
                    [_uid, medic_paycheck, _query] call server_fnc_addToBank;
                    [format["Paycheck recieved, you got $%1", medic_paycheck], 2] remoteExec ["fnc_receive_notification", _clientId];
                };
            };
        };
    } forEach allUnits;
};
