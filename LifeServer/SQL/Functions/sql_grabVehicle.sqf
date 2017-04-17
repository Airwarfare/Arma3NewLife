/*
Author: Airwarfare
Purpose: Grabs a vehicle from the db
Method Signature(_uid, _vehicleId, clientId)
*/
_uid = _this select 0;
_vehicleID = _this select 1;
_clientId = _this select 2;
_car = format["SELECT * FROM vehiclegarage WHERE ownerUID = '""%1""' AND vehicleID = '""%2""'", _uid, _vehicleId] call sql_async_call;
_car = call compile _car;
_car = (_car select 1);
_car remoteExec["fnc_receiveCar", _clientId];

_removeCar = "extDB3" callExtension format["1:SQL:DELETE FROM vehiclegarage WHERE vehicleID = '""%1""'", _vehicleID];