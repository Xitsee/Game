//Claw weapon switch
CDReset();
if (currentWeapon == noone)
{
	SwitchWeapons(oWhip);
}
else 
{
	if (currentWeapon.weaponType == WEAPON.WHIP)
	{
		instance_destroy(currentWeapon);
		currentWeapon = noone;
	}
	else
	{
		instance_destroy(currentWeapon);
		SwitchWeapons(oWhip);
	}
}
