/*
Author: Airwarfare
Purpose: Manages Keys And Ownership
Method Signature()
*/
_type = _this select 0;
_uid = getPlayerUID player;
_keyGen = nil;
switch (_type) do {
    case "generate": {
        _keyGen = _uid + format["%1", random[4000, 10000, 100000]];
    };
    case "remove": {

    };
    case "give": {

    };
};
_keyGen;