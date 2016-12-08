//Idk if I really need this file but yolo
diag_log "Core.init.sqf";
waitUntil {!(isNull (findDisplay 46))};

(findDisplay 46) displayAddEventHandler ["KeyDown", "_this call fnc_key_press"];