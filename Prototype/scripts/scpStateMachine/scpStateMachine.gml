/*
	create	= first code to run
	execute	= code to run in every frame
	destroy	= final code to run before the current state finalize
*/
function	state(name) constructor{
	last_state = 0;
	state_name = name;
	
	static create	= function(){};
	static execute	= function(){};
	static destroy	= function(){};
}

//Initiate state machine(used in create)
function	state_create(_state)
{
	current_state	= _state;
	
	current_state.create();
}

//Runs the current state(used in step)
function	state_execute()
{
	current_state.execute();
}

//Changes the current state to another
function	state_change(_state)
{
	last_state		= current_state;
	
	current_state.destroy();
	current_state	= _state;
	current_state.create();
}

//Returns the name of the current state
function	state_get_name()
{
	return (current_state.state_name);
}