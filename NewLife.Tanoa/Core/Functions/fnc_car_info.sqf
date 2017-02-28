disableSerialization;
_index = _this select 1;
diag_log format["%1", _index];
_array = lbData [1500, _index];
_array = call compile _array;
diag_log format["_array: %1", _array];
_class = _array select 0;
diag_log format["Class: %1", _class];

_scope = getNumber(configFile >> "CfgVehicles" >> _class >> "scope");
_picture = getText(configFile >> "CfgVehicles" >> _class >> "picture");
_displayName = getText(configFile >> "CfgVehicles" >> _class >> "displayName");
_vehicleClass = getText(configFile >> "CfgVehicles" >> _class >> "vehicleClass");
_side = getNumber(configFile >> "CfgVehicles" >> _class >> "side");
_faction = getText(configFile >> "CfgVehicles" >> _class >> "faction");
_speed = getNumber(configFile >> "CfgVehicles" >> _class >> "speed");
_armor = getNumber(configFile >> "CfgVehicles" >> _class >> "armor");
_seats = getNumber(configFile >> "CfgVehicles" >> _class >> "transportSoldier");
_hp = getNumber(configFile >> "CfgVehicles" >> _class >> "enginePower");
_fuel = getNumber(configFile >> "CfgVehicles" >> _class >> "fuelCapacity");

diag_log format["%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11", _scope, _picture, _displayName, _vehicleClass, _side, _faction, _speed, _armor, _seats, _hp, _fuel];
_control = (findDisplay 50000) displayCtrl 1001;
_control ctrlSetStructuredText parseText format["Speed: %1<br />Armor: %2<br />Seats: %3<br />Fuel Capacity: %4<br />Weight Capacity: %5", _speed, _armor, _seats + 1, _fuel, _array select 1];
