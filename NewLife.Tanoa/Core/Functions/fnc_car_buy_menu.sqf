disableSerialization;
diag_log "Working";

if(isNull(findDisplay 50000)) then {
    _ok = createDialog "car_shop";
};

_cars = [];

{
    _valid = false;
    diag_log format["%1 | %2", _x, _x select 3];
    {
        if(_x == "CarShop") then {
            _valid = true;
        };
    } forEach (_x select 3);
    diag_log _valid;
    if(_valid) then {
        _cars = _cars + [_x];
    };
} forEach car_config;
diag_log _cars;

_control = (findDisplay 50000) displayCtrl 1500;
/*
for [{_i = 0}, {_i < (count _cars), {_i = _i + 1}] do {
    _control lbSetData [parseNumber(_i), format["%1", (_cars select _i) select 0]];
    if(!isNull((_cars select _i) select 4)) then {
        _control lbSetPicture [_i, (_cars select _i) select 4];
    };
};
*/

_count = 0;
{

    //test
    _text = format["%1", _x select 0];
    _index = _contorl lbAdd _text;
    _data = lbSetData [1500, _index, _x select 1];

    _count = _count + 1;
} forEach _cars;