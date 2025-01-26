// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Enemies_Movement(xDirection, yDirection, move_speed)
{
	var	_hSpeed = xDirection * move_speed;
	var _vSpeed = yDirection * move_speed;
	var	_hMove	= get_sign(_hSpeed);
	var _vMove  = get_sign(_vSpeed);

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
	if (xDirection != 0)
		image_xscale = xDirection;
	x += _hSpeed;
	y += _vSpeed;
}
