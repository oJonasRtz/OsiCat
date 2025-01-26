/// @description Insert description here
// You can write your code in this editor

if (show_chat){
	show_chat = create_chat_box(name, colour, my_text, page, ft_text, c_white, c_black, colour, "up", keyboard_check_pressed(vk_space));
	o_player.stop_walk = show_chat;
	o_camera.can_move = !show_chat;
	if (!show_chat && first_call)
		call_player = true
	else
		can_interact = true;
}

if (first_call && call_player){
	o_player.show_chat = true;
	o_player.talking_with = name;
	o_player.side = "up";
	first_call = false;
	call_player = false;
	can_interact = true;
}
