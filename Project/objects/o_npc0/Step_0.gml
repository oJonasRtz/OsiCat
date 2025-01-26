/// @description Insert description here
// You can write your code in this editor

if (instance_exists(o_target))
	target = o_target;
else
	target = noone;

choose_direction(dir, int64(30), target);
movement(dir.x_dir, dir.y_dir, move_speed, spriteset, stop_walk);

if (distance_to_object(o_player) <= 50 && keyboard_check_pressed(vk_space) && can_interact){
	show_chat = true;
	can_interact = false;
}
