//Get parent step event(oOdin)
event_inherited();

if (ammo == 0)
	reloading = true;
var _reload		= reloading ? reload() : false;