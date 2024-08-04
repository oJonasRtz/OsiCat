/*
	Functions used for player movement
*/

function	player_get_commands()
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

function	get_sign(n)
{
	return ((n > 0) - (n < 0));
}

function	vertical_walking(move_direction_speed)
{
	var	_vSpeed		= move_direction_speed;
	var	_vMove		= get_sign(_vSpeed);
	
	if (_vMove < 0)
		sprite_index = sOsiCatBack;
	else if (_vMove > 0)
		sprite_index = sOsiCatIdle;
	y += _vSpeed;
}

function	horizontal_walking(move_direction_speed)
{
	var	_hSpeed		= move_direction_speed;
	var	_hMove		= get_sign(_hSpeed);

	if (_hMove != 0)
	{
		image_xscale = _hMove;
		sprite_index	= sOsiCatMoving;
	}
	x += _hSpeed;
}

function	walking(move_direction_x, move_direction_y, move_speed)
{
	var	_hMove = move_direction_x;
	var	_vMove = move_direction_y;
	var	_vSpeed;
	var	_hSpeed;
	
	//Vector normalize if walking in diagonal
	if (_hMove != 0 && _vMove != 0)
	{
		var	vector_length	= sqrt(sqr(_hMove) + sqr(_vMove));
		_hSpeed				= (_hMove / vector_length) * move_speed;
		_vSpeed				= (_vMove / vector_length) * move_speed;
	}
	else
	{
		_hSpeed		= _hMove * move_speed;
		_vSpeed		= _vMove * move_speed;
	}
	horizontal_walking(_hSpeed);
	vertical_walking(_vSpeed);
}
