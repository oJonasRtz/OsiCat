
//	State machine init
idle	= new state("Idle");
moving	= new state("Moving");
pause	= new state("Pause");

//	Set pause state
pause.create	= function(){
	image_spd = image_speed;
}
pause.execute	= function(){
	if(global.g_pause){
		image_speed = 0;
		exit ;
	}
	else{
		image_speed = image_spd;
		state_change(last_state);
	}
}
pause.destroy	= function(){}

//	Start state machine
state_create(idle);
