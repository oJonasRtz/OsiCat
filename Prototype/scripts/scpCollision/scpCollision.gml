// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_collision(object)
{
	var colX = instance_place(xprevious, y, object);
	var colY = instance_place(x, yprevious, object);

	if (!(colX >0))
	{
		x = xprevious;
		y = y;
	}
	else
	{
		if (!(colY > 0))
		{
			x = x;
			y = yprevious;
		}
		else
		{
			x = xprevious;
			y = yprevious;
		}
	}
}