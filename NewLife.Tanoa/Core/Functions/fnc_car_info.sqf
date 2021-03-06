disableSerialization;
_index = _this select 1;
_class = lbData [1500, _index];
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