/// @description Char switch kitsune
CDReset();
global.currentPlayer = noone;
var _res = ds_list_find_value(global.respawnLocations, PLAYERCHAR.KITSUNE);
global.targetX = _res[0];
global.targetY = _res[1];
global.targetDirection = 1;
global.prevCharacter = PLAYERCHAR.KITSUNE;
room_goto(_res[2]);

