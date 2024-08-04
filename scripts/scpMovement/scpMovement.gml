/*
	Functions used for player movement
*/

function	get_movement_commands()
{
	var _right		= keyboard_check(ord("D"));
	var _left		= keyboard_check(ord("A"));
	var _up			= keyboard_check(ord("W"));
	var _down		= keyboard_check(ord("S"));
	var _is_moving	= _up || _down || _right || _left;

	return 
	{
		right		: _right,
		left		: _left,
		up			: _up,
		down		: _down,
		is_moving	: _is_moving
	}
}

function	walking_horizontal(move_direction, move_speed)
{
	var	_hSpeed = move_direction * move_speed;

	if (move_direction != 0)
	{
		sprite_index = sOsiCatMoving;
		image_xscale = move_direction;	
	}
	x += _hSpeed;
}

function	walking_vertical(move_direction, move_speed)
{
	var _vSpeed	= move_direction * move_speed;
	
	if (move_direction < 0)
		sprite_index = sOsiCatBack;
	else if (move_direction > 0)
		sprite_index = sOsiCatIdle;
	y += _vSpeed;
}
