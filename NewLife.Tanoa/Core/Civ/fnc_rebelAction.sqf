/*
Author: Airwarfare
Purpose: Recieves the man object from the server
*/
//AddActions
if(life_side != "Terrorist") then {
    TheMan addAction ["<t color='#00C853'>Join Rebels</t>", {[] call fnc_civToRebel}, [], 1, false, false, "", "", 4];
};