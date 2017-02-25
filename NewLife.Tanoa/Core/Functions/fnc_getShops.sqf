/*
Author: Airwarfare
Purpose: Dynamically Adds all actions and menus to all shops
*/
{
	_s = _x getVariable "_shop";
	_object = _x;
	{
		if(typeName _x != "STRING") then {
			_x = "";
		};
		//diag_log format["_x %1 type %2", _x, typeName _x];
		if(_x != "") then {
			switch(_x) do {
				case "DMV": {[_object] call fnc_DMVAddAction;};
				case "DEV": {_object addAction ["<t color='#00C853'>DEV</t>", {hint "DEV STUFF"}, [], 1, false, false, "", "", 4];};
				case "HELI": {_object addAction ["<t color='#00C853'>Helicopter Shop</t>",{},[],1,false,false,"","",4];};
				case "GARAGE": {_object addAction["<t color='#00C853'>Vehicle Garage</t>",{},[],1,false,false,"","",4];};
				case "MARKET": {_object addAction["<t color='#00C853'>Market</t>",{},[],1,false,false,"","",4];};
				case "BANK": {_object addAction["<t color='#FDD835'>Bank</t>", {[] call fnc_atm_menu},[],1,false,false,"","",4];};
				case "CARSHOP": {_object addAction["<t color='#00C853'>Car Shop</t>",{_ok = createDialog "car_shop"; [] call fnc_car_buy_menu;},[],1,false,false,"","",4];};
				case "GENERALSTORE";
			};
		};
	} forEach _s;
} forEach allUnits;
