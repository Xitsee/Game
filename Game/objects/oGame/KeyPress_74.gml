/// @description Char switch cerberus
CDReset();
global.currentPlayer = noone;
var _res = ds_list_find_value(global.respawnLocations, PLAYERCHAR.CERBERUS);
global.targetX = _res[0];
global.targetY = _res[1];
global.targetDirection = 1;
global.prevCharacter = PLAYERCHAR.CERBERUS;
room_goto(_res[2]);

