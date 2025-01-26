/// @description Insert description here
// You can write your code in this editor

choose_direction(dir, int64(30), target);
movement(dir.x_dir, dir.y_dir, move_speed, spriteset, stop_walk);

if (distance_to_object(o_player) <= 30 && keyboard_check_pressed(vk_space))
	show_chat = true;
