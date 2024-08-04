/// @description Parent of all living beings

//state machine initiation
idle	= new state("Idle");
walk	= new state("Walk");
pause	= new state("Pause");

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