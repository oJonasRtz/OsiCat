/// @description Insert description here
// You can write your code in this editor

//	Text
first_call = true;
my_text = npc0_text(first_call, name);
show_chat = false;
page = 0;
call_player = false;
can_interact = true;

//	stats
move_speed = 4;
spriteset = set_sprites(s_npc0, s_npc0, s_npc0, s_npc0);

//	Walk
target = noone;
dir = new_dir();
