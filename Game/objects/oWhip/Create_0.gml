// Inherit the parent event
event_inherited();

state = WEAPONSTATE.FREE;
weaponType = WEAPON.WHIP;
skin = WEAPONSKIN.BASIC;

var _c = oCooldown;
//Basic attr
basicDamageSprite = 4;
basicCD = 0.3;
basicDMG = 2;

//Alt attr
altCD = 2;
altDMG = 1;

//Add ammo to oCooldown if it exists and no ammo has been added
if (basicAmmo != -1) and (_c.basicAmmoCounter == -1) _c.basicAmmoCounter = basicAmmo;
if (altAmmo != -1) and (_c.altAmmoCounter == -1) _c.altAmmoCounter = altAmmo;

//Weapon scripts
weaponCharScript[WEAPONSTATE.FREE] = WhipFree;
weaponCharScript[WEAPONSTATE.BASIC] = -1;
weaponCharScript[WEAPONSTATE.ALT] = -1;

//Skill icon
basicIcon = sKitIcon;
basicIconAct = sKitIcon;
altIcon = sKitIcon;
altIconAct = sKitIcon;

//Weapon skins
weaponSkin[0] = ds_map_create();
ds_map_add(weaponSkin[0], "spriteWeapon", sWhip);
ds_map_add(weaponSkin[0], "spriteBasic", sClawBasic);

ChangeWeaponSkin(skin);