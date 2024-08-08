//Draw shadow
draw_set_alpha(0.5);
		draw_sprite(sShadow, 0, x, y + 10);
draw_set_alpha(1);
//Draw self
draw_self();
