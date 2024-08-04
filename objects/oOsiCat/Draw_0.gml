/// @description show status
draw_self();

draw_set_color(c_black);
	draw_text(x - 20, y - 30, string(state_get_name()));
	draw_text(x - 20, y - 50, string(move_speed));
draw_set_color(c_white);