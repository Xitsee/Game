// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ClawAlt(){
	with (instance_create_layer(x, y, "Instance", oClawAlt))
	{
		ownerChar = other.ownerChar;
		speed = 10;
		image_yscale = other.image_yscale;
		direction = other.image_angle;
		image_angle = direction;
	}

	//CD
	var _c = oCooldown;
	if (_c.altCDTimer == 0) and (_c.altAmmoCounter == altAmmo){
		_c.altCDTimer = room_speed * altCD;
	}
	_c.altAmmoCounter -= 1;
	if (_c.altAmmoCounter != 0) oClaw.alarm[0] = 0.3 * room_speed; //Slight delay
	
	
	
	//State
	state = WEAPONSTATE.FREE; 
}