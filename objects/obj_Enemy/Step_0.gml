/// @description Insert description here
// You can write your code in this editor
if (x > room_width + 200){
	x = room_width + 200;
	hspeed = abs(hspeed) * -1;
}
else if (x < -200){
	x = -200;
	hspeed = abs(hspeed);
}

if (y > room_height + 200){
	y = room_height + 200;
	vspeed = abs(vspeed) * -1;
}
else if (y < -200){
	y = -200;
	vspeed = abs(vspeed);
}

life_counter -= 1;
if life_counter <= 0 { instance_destroy(); }