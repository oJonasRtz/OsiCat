/*
	Set game FPS
*/

//set_fps must be set in menu while get_fps is used by objects
global.set_fps	= display_get_frequency();

game_set_speed(global.set_fps, gamespeed_fps);
global.get_fps = game_get_speed(gamespeed_fps);