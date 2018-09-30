/// @description Insert description here
// You can write your code in this editor

if (dead) exit;

current_line_thickness = ceil(
	max_line_thickness * 
	(
		(max_possible_distance - point_distance(obj_Circle_One.x, obj_Circle_One.y, obj_Circle_Two.x, obj_Circle_Two.y))
			/
		max_possible_distance
	)
);

var current_distance = point_distance(obj_Circle_One.x, obj_Circle_One.y, obj_Circle_Two.x, obj_Circle_Two.y);

var compared_to_half = current_distance - (max_possible_distance / 2);
if (compared_to_half < 0){
	obj_Circle_One.radius -= 0.00005 * compared_to_half;
	obj_Circle_Two.radius -= 0.00005 * compared_to_half;
}
else { // compared_to_half >= 0;
	obj_Circle_One.radius -= 0.000008 * compared_to_half;
	obj_Circle_Two.radius -= 0.000008 * compared_to_half;
}

if (collision_line(obj_Circle_One.x, obj_Circle_One.y, obj_Circle_Two.x, obj_Circle_Two.y, obj_Enemy, true, false)){
	dead = true;
}