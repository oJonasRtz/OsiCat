//Variables declaration
move_speed	= 400 / global.get_fps;
life		= 7;
damage		= 1;

//Get parent create event(oOdin)
event_inherited();

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
}
idle.destroy	= function(){}

walk.create		= function(){}
walk.execute	= function()
{
	var	commands	= player_get_commands();	

	set_pause(global.g_pause);
	walking(commands.right - commands.left, commands.down - commands.up, move_speed);
	if (!commands.is_moving)
		state_change(idle);
}
walk.destroy	= function(){}