/*
Author: Airwarfare
Purpose: Checks what DLCS the player has(this is to use for the shops)
*/
_playerDlcs = getDLCs 1;
if(395180 in _playerDlcs) then {
	dlc_array set [0, ["Apex", true]];
};
if(332350 in _playerDlcs) then {
	dlc_array set [1, ["Marksmen", true]];
};
if(304380 in _playerDlcs) then {
	dlc_array set[2, ["Helicopters", true]];
};