/*
Author: Airwarfare
Purpose: Handles Player Death
Method Signature(killerObject)
*/
_killed = _this select 0;
_object = _this select 1;
if(_object isKindOf "Man") then {
	//Murder
	_uid = getPlayerUID _object;
	_update = "extDB3" callExtension format["1:SQL:UPDATE playerinfo SET Rep = '%1', Bounty = '%2' WHERE UID = '%3'", crime_murder, crime_murder_bounty, _uid];
	systemChat (name _object) + " has killed " + (name _killed);
} else {
	//VDM
	_string = "";
	_crew = crew _object;
	{
		_uid = getPlayerUID _x;
		_string = _string + ", " + (name _x);
		_update = "extDB3" callExtension format["1:SQL:UPDATE playerinfo SET Rep = '%1', Bounty = '%2' WHERE UID = '%3'", crime_vdm, crime_vdm_bounty, _uid];
	} forEach _crew;
	systemChat _string + " has VDM'ed " + (name _killed);
};