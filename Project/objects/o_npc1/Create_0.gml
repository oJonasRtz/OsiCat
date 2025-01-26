/// @description Insert description here
// You can write your code in this editor

//	Text
my_textbox = false;
first_call = true;
my_text = npc1_text(first_call, name);
show_chat = false;
page = 0;

//	stats
move_speed = 4;
spriteset = set_sprites(s_npc0, s_npc0, s_npc0, s_npc0);

//	Walk
target = o_player;
dir = new_dir();
