//Variables declaration
move_speed	= 5;
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
	var	commands	= get_movement_commands();	

	if (commands.is_moving)
		state_change(walk);
}
idle.destroy	= function(){}

walk.create		= function(){}
walk.execute	= function()
{
	var	commands	= get_movement_commands();	

	walking_horizontal(commands.right - commands.left, move_speed);
	walking_vertical(commands.down - commands.up, move_speed);
	if (!commands.is_moving)
		state_change(idle);
}
walk.destroy	= function(){}