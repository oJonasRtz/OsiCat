/// @description Insert description here
// You can write your code in this editor

image_speed = 0;
image_index = 0;

if (image_angle == (-90))
{
	Max = xstart - 200;
	Min = xstart + 200;
	condition = x == Max || x == Min;
	Xmove_speed = 5;
	Ymove_speed = 0;
}
else
{
	Max = ystart - 200;
	Min = ystart + 200;
	condition = y == Max || y == Min
	Xmove_speed = 0;
	Ymove_speed = 5;
}
