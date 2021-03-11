//Spear weapon switch
CDReset(true);
if (currentWeapon == noone)
{
	SwitchWeapons(oSpear);
}
else 
{
	if (currentWeapon.weaponType == WEAPON.SPEAR)
	{
		instance_destroy(currentWeapon);
		currentWeapon = noone;
	}
	else
	{
		instance_destroy(currentWeapon);
		SwitchWeapons(oSpear);
	}
}
