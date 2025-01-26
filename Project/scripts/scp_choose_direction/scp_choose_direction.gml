// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function	new_dir(){
	return {x_dir: 0,
			y_dir: 0};
}

function	choose_direction(dir, distance, target){
	var	__dir__;

	if (!is_struct(dir) || !instance_exists(target) || !is_int64(distance))
		return ;

	if (distance_to_object(target) <= distance){
		dir.x_dir = 0;
		dir.y_dir = 0;
		return ;
	}
	
	__dir__ = point_direction(x, y, target.x, target.y);
	
	dir.x_dir = __dir__ > 90 && __dir__ < 270 ? -1 : 1;
	dir.y_dir = __dir__ >= 0 && __dir__ <= 180 ? -1 : 1;

}
