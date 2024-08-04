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