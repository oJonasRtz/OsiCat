/// @description Insert description here
// You can write your code in this editor


shader_set(shdTest);

	var uni_time = shader_get_uniform(shdTest, "time");
	shader_set_uniform_f(uni_time, current_time / 1000);
	draw_rectangle(x, y, 995, 385, false);
	draw_rectangle(1500, 640, 1950, 1220, false);

shader_reset();
