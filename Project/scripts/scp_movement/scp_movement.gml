/*
	if left and right is holden, whe walk to right
	
	if up and down is holden we walk down
*/
function	set_keys(right, left, up, down){	
	return {u: up && !down,
			d: down,
			l: left && !right,
			r: right};
}

function	is_moving(key_set){
	if (!is_struct(key_set))
		return (0);
	return (key_set.r || key_set.l || key_set.u || key_set.d);
}

function	set_sprites(idle, front, back, side){
	return {i: idle, f: front, b: back, s: side};
}

function	h_move(dir, move_speed, side){
	var	move;
	
	if (dir != 0){
		sprite_index = side;
		image_xscale = get_sign(dir);
	}
	move = dir * move_speed;
	return (move);
}

function	v_move(dir, move_speed, front, back){
	var	move;

	if (dir < 0)
		sprite_index = back;
	else if (dir > 0)
		sprite_index = front;
	move = dir * move_speed;
	return (move);
}

function	valid_input(x_dir, y_dir, move_speed, sprite_set, stop_move){
	return (is_struct(sprite_set) && is_real(x_dir) && is_real(y_dir) && is_real(move_speed) && is_bool(stop_move));
}

function	movement(x_dir, y_dir, move_speed, sprite_set, stop_move){
	var	hmove, vmove;

	if (!valid_input(x_dir, y_dir, move_speed, sprite_set, stop_move) || stop_move)
		return ;
	if (x_dir != 0 && y_dir != 0){
		var	vector = sqrt(sqr(x_dir) + sqr(y_dir));
		x_dir = x_dir / vector;
		y_dir = y_dir / vector;
	}		
	hmove = h_move(x_dir, move_speed, sprite_set.s);
	vmove = v_move(y_dir, move_speed, sprite_set.f, sprite_set. b);
	
	x += hmove;
	y += vmove;
}
