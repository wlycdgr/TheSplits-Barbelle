/// @description
life_counter = 1350;
var sector = choose(1, 1, 2, 2, 3, 4,);

switch(sector){
case 1: // top
	x = -150 + random(room_width + 150);
	y = -25 - random(150);
	break;
case 2: // bottom
	x = -150 + random(room_width + 150);
	y = room_height + 25 + random(150);
case 3: // left
	x = -25 - random(150);
	y = random(room_height);
	break;
case 4: // right
	x = room_width + 25 + random(150);
	y = random(room_height);
	break;
}

var total_speed = 5;
hspeed = 1.5 + random(2);
vspeed = total_speed - hspeed;
hspeed *= choose(-1, 1);
vspeed *= choose(-1, 1);

color = make_color_rgb(255, 57, 103);