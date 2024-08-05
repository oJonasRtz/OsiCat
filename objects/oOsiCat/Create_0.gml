//Variables declaration
move_speed	= 400 / global.get_fps;
life		= 7;
ammo		= 3;
ammo_cnt	= 30;
reloading	= false;
damage		= 1;
last_state  = 0;

//Get parent create event(oOdin)
event_inherited();


function reload()
{
	ammo_cnt --;
	
	if ammo_cnt == 0
	{
		ammo++;
		if ammo != 3
			ammo_cnt = 10;
		else
		{
			ammo_cnt	= 30;
			reloading	= false;
		}
	}
}

//Set state machine
idle.create		= function()
{
	if (sprite_index != sOsiCatBack)
		sprite_index	= sOsiCatIdle;
}
idle.execute	= function()
{
	var	commands	= player_get_commands();	

	set_pause(global.g_pause);
	if (commands.is_moving)
		state_change(walk);
	if (commands.shoot)
		state_change(shoot);
}
idle.destroy	= function()
{
	last_state = idle;
}

walk.create		= function(){}
walk.execute	= function()
{
	var	commands	= player_get_commands();	

	set_pause(global.g_pause);
	walking(commands.right - commands.left, commands.down - commands.up, move_speed);
	if (!commands.is_moving)
		state_change(idle);
	if (commands.shoot)
		state_change(shoot);
}
walk.destroy	= function()
{
	last_state = walk;
}

shoot.create	= function(){}
shoot.execute	= function()
{
	if (ammo > 0)
	{
		instance_create_depth(x, y, object_index, oPlayerBullets)
		ammo--;
	}
	state_change(last_state);
}
shoot.destroy	= function(){}