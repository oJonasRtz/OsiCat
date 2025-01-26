/// @description Insert description here
// You can write your code in this editor

if (show_chat){
	show_chat = create_chat_box(name, name_colour, my_text, page, ft_text, c_white, c_black, name_colour, "down", keyboard_check_pressed(vk_space));
	first_call = false;
	o_player.stop_walk = show_chat;
	o_camera.can_move = !show_chat;
}
