/// @description Parent of all living beings

//state machine initiation
idle		= new state("Idle");
walk		= new state("Walk");
shoot		= new state("Shoot");
atack		= new state("Atack");
death		= new state("Death");
pause		= new state("Pause");

state_map	= 
{
	is_moving	: walk,
	idle		: idle,
	shoot		: shoot,
}

//Set pause state
pause.create	= function()
{
	imageSpd	= image_speed;
}
pause.execute	= function()
{
	if	(global.g_pause)
	{
		image_speed = 0;
		exit;
	}
	else
	{
		image_speed = imageSpd;
		state_change(last_state);
	}
}
//starts state machine
state_create(idle);