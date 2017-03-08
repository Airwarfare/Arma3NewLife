/*
Author: Airwarfare
Purpose: Adds a vehicle to the garage in the db
MethodSignature(UID, Class, Damage, Vitems, Skin)
*/
_uid = _this select 0;
_class = _this select 1;
_damage = _this select 2;
_vitems = _this select 3;
_skin = _this select 4;
_key = _this select 6;
if(isNil _vitems) then { _vitems = ""; };
if(isNil _skin) then { _skin = ""; };
_randomNumber = nil;
while {true} do {
    _r = floor(random 50000);
    _numberQuery = format["SELECT * FROM vehiclegarage WHERE vehicleID = '""%1""'", _r];
    if(_numberQuery == "[1,[]]") exitWith {
        _randomNumber = _r;
    };
};
_update = "extDB3" callExtension format["1:SQL:INSERT INTO vehiclegarage (ownerUID, vehicleClass, vehicleDamage, vehicleVitems, vehicleSkin, vehicleID, vehicleKey) VALUES ('""%1""', '""%2""', '""%3""', '""%4""', '""%5""', '""%6""', '""%7""')", _uid, _class, _damage, _vitems, _skin, _randomNumber, _key];