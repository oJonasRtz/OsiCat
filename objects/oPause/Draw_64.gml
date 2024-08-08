/// @description Insert description here
// You can write your code in this editor

if (global.g_pause)
{
	var camW		= camera_get_view_width(view_camera[0]);
	var camH		= camera_get_view_height(view_camera[0]);
	
	var camX		= camera_get_view_x(view_camera[0]);
	var camY		= camera_get_view_y(view_camera[0]);
	
	var midleX		= camX + camW / 2;
	var midleY		= camY + camH / 2;
	
	instance_create_depth(midleX, midleY - 50, -1, oPauseButtonPlay);
	instance_create_depth(midleX, midleY + 50, -1, oPauseButtonHome);
	instance_create_depth(midleX, midleY, -1, oPauseBackground);
	//draw_sprite(sButtonPlay, 0, midleX, midleY - 50);
	
}




