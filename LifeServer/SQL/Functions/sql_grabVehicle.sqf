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
_car = (_car select 1) select 0;
_car remoteExec["sql_grabVehicle", _clientId];