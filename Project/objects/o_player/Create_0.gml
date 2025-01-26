
//	Base stats
name = "OsiCat";
move_speed = 4;
life = 7;
damage = 1;

//text
side = "";
page = 0;
show_chat = false;
talking_with = name;

//	Sprites
sprite_set = set_sprites(s_front, s_front, s_back, s_moving);

event_inherited();

//	Idle events
idle.create		= function(){
	if (sprite_index != sprite_set.b)
		sprite_index = sprite_set.i;
}
idle.execute	= function (){
	//State change
	if (keyboard_check(vk_anykey))
		state_change(moving);

	//Check pause
	set_pause(global.g_pause);
}
idle.destroy	= function (){}

//	Walking
moving.create	= function(){}
moving.execute	= function(){
	//	Move the player
	var	keys = set_keys(keyboard_check(ord("D")),
						keyboard_check(ord("A")),
						keyboard_check(ord("W")),
						keyboard_check(ord("S")));
	movement(keys.r - keys.l, keys.d - keys.u, move_speed, sprite_set, stop_walk);
	
	//Check pause
	set_pause(global.g_pause);
	
	//State change
	if (!is_moving(keys))
		state_change(idle);
}
moving.destroy	= function(){}
