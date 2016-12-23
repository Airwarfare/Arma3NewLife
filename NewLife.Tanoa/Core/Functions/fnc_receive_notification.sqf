/*
Author: Airwarfare
Purpose: Generic Update Fnc
Method Signature("Message", Format, "Title")
*/
_message = _this select 0;
_format = _this select 1;
_title = _this select 2;
switch (_format) do {
	case 0:
	{
		["Error", [_message]] call bis_fnc_showNotification;
	};
	case 1:
	{
		["Default", [_message]] call bis_fnc_showNotification;
	};
	case 2:
	{
		["Complete", [_title, _message]] call bis_fnc_showNotification;
	};
};