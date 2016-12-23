/*
Author: Airwarfare
Purpose: LevelsUp A Player for a given type of level
Method Signature(_LevelType, UID)
*/
_levelType = _this select 0;
_UID = _this select 1;
_level = nil;
_column = nil;
switch(_levelType) do {
	case 1: {_level = call compile (playerInfo select 7);
			 _column = "LifeLevel";};
	case 2: {_level = call compile (playerInfo select 8);
			 _column = "CivLevel";};
	case 3: {_level = call compile (playerInfo select 9);
			 _column = "CopLevel";};
	case 4: {_level = call compile (playerInfo select 10);
			 _column = "TerrorLevel";};
};
_lastLevel = [_level, _column];
_newlevelExp = (_level select 0 * 100) + _level select 1;
_newLevel = (_level select 0) + 1;
[_column, [_newLevel, _newlevelExp], _UID, "playerinfo"] remoteExec ["sql_generic_update", 2];