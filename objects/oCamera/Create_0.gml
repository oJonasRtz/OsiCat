//Variables
yH		= display_get_height()/3;
xW		= display_get_width()/3;
target	= oOsiCat;

//Set camera in every room
view_enabled = true;
view_visible[0] = true;
camera_set_view_speed(view_camera[0],1,1);
camera_set_view_target(view_camera[0],target);
camera_set_view_size(view_camera[0],xW,yH);
camera_set_view_border(view_camera[0], 32, 32);
surface_resize(application_surface,xW,yH);
display_set_gui_size(xW,yH);

event_inherited();

idle.create		= function(){}
idle.execute		= function()
{
	set_pause(global.g_pause);
	//Variables
var _roomW		= room_width;
var _roomH		= room_height;
var cam_x		= lerp(mouse_x, target.x, 0.8) - (xW / 2);
var cam_y		= lerp(mouse_y, target.y, 0.8) - (yH / 2);
var _camW		= camera_get_view_width(view_camera[0]);
var _camH		= camera_get_view_height(view_camera[0]);
//Variables for camera don't get out the room
var _mThenZeroX	= cam_x < 0;
var _mThenZeroY = cam_y < 0;

//Verifies if target exists
if (!instance_exists(target))
	exit;

//Update cam position
cam_y *= !_mThenZeroY;
cam_x *= !_mThenZeroX;
if (cam_x > room_width - _camW)
    cam_x = room_width - _camW;
if (cam_y > room_height - _camH)
    cam_y = room_height - _camH;
camera_set_view_pos(view_camera[0], cam_x, cam_y);
}
idle.destroy		= function(){}
