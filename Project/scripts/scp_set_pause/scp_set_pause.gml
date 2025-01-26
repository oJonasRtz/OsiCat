/*
	Pause config
*/

global.g_pause = false;

function	set_pause(is_paused){
	if (!is_bool(is_paused))
		return (false);
	var	p = is_paused ? state_change(pause) : false;
}
