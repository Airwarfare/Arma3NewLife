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
            diag_log format["UIDX %1", _uid];
            _query = format["SELECT Bank FROM playerInfo WHERE UID = '""%1""'", _uid] call sql_async_call;
            _query = call compile _query;
            _query = ((_query select 1) select 0) select 0;
            diag_log _query;
            _clientId = owner _x;
            switch(side _x) do {
                case civilian: {
                    [[_uid, _clientId], civ_paycheck, _query, false] call server_fnc_addToBank;
                    [format["Paycheck recieved, you got $%1", civ_paycheck], 2, "Bank Payment"] remoteExec ["fnc_receive_notification", _clientId];
                };
                case west: {
                    [[_uid, _clientId], cop_paycheck, _query, false] call server_fnc_addToBank;
                    [format["Paycheck recieved, you got $%1", cop_paycheck], 2, "Bank Payment"] remoteExec ["fnc_receive_notification", _clientId];
                };
                case resistance: {
                    [[_uid, _clientId], medic_paycheck, _query, false] call server_fnc_addToBank;
                    [format["Paycheck recieved, you got $%1", medic_paycheck], 2, "Bank Payment"] remoteExec ["fnc_receive_notification", _clientId];
                };
            };
        };
    } forEach allUnits;
};
