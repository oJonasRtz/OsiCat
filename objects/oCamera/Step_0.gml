//Variables
var _roomW	= room_width;
var _roomH	= room_height;
var cam_x	= lerp(mouse_x, target.x, 0.8) - (xW / 2);
var cam_y	= lerp(mouse_y, target.y, 0.8) - (yH / 2);
var _camW	= camera_get_view_width(view_camera[0]);
var _camH	= camera_get_view_height(view_camera[0]);

//Verifies if target exists
if (!instance_exists(target))
	exit;

//Update cam position
if (cam_x < 0) 
    cam_x = 0;
if (cam_y < 0)
    cam_y = 0;
if (cam_x > room_width - _camW)
    cam_x = room_width - _camW;
if (cam_y > room_height - _camH)
    cam_y = room_height - _camH
camera_set_view_pos(view_camera[0], cam_x, cam_y);