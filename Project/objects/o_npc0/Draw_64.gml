/// @description Insert description here
// You can write your code in this editor


if (show_chat){
	show_chat = create_chat_box(name, colour, my_text, page, ft_text, c_white, c_black, c_white, "down");
	first_call = false;
	o_player.stop_move = show_chat;
	o_camera.can_move = !show_chat;
}
