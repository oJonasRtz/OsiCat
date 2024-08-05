//Variables
life			= 3;
move_speed		= 300 / global.get_fps;
xDirection		= 0;
yDirection		= 0;
timer			= global.get_fps * 3;

event_inherited();

idle.create		= function(){}
idle.execute	= function()
{
	randomize();
	var	_timer	= irandom(timer);
	
	_timer--;
	if (!_timer)
		state_change(walk);
}
idle.destroy	= function(){}

walk.create		= function()
{
	randomize();
	xDirection	= irandom_range(-1, 1);
	yDirection	= irandom_range(-1, 1);
}
walk.execute	= function()
{
	var _timer  = irandom(timer);
	
	_timer--;
	Enemies_Movement(xDirection, yDirection, move_speed);
	if (!_timer)
		state_change(idle);
}
walk.destroy	= function(){}
