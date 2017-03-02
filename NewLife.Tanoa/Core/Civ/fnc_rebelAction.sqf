/*
Author: Airwarfare
Purpose: Recieves the man object from the server
*/
_man = _this select 0;
//AddActions
if(life_side != "Terrorist") then {
    _man addAction ["<t color='#00C853'>Join Rebels</t>", {[] call fnc_civToRebel}, [], 1, false, false, "", "", 4];
};