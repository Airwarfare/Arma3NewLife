/*
Author: Airwarfare
Purpose: Gives the player a nice notification when they level
*/
_s = "Congratulations! Here are your new unlocks!";
_temp = [2, 100];
{
	if(_x select 0 == _temp select 0) then {
		{
			ss = format ["%1%2 %3", "%1", "%2", _x];
			_s = _s + ss;
		} forEach (_x select 1);
	}
} forEach life_levelUnlocks;
_s