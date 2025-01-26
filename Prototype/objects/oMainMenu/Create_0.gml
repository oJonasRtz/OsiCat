/// @description Insert description here
// You can write your code in this editor

yH		= room_height;
xW		= room_width;

x = room_width / 2;
y = room_height / 2;

//Set camera in every room
view_enabled = true;
view_visible[0] = true;

camera_set_view_size(view_camera[0],xW,yH);
camera_set_view_border(view_camera[0], 32, 32);
surface_resize(application_surface,xW,yH);
display_set_gui_size(room_width, room_height);

instance_create_depth(x , y - 30, -1, oMainMenuButtonPllay);
instance_create_depth(x , y + 30, -1, oMainMenuButtonHowToPlay);
instance_create_depth(x , y + 100, -1, oMainMenuButtonExit);

