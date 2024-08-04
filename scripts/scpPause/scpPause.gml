/*
	Function an variables to set game pause
*/

global.g_pause	= false;

function set_pause(is_paused)
{
		var	_pause = is_paused ? state_change(pause) : false;
}