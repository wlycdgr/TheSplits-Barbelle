/// @description Insert description here
// You can write your code in this editor
if (obj_Gameplay_Room_Controller.state != gs_playing) {
	speed = 0;
	exit;
}

xv = obj_Circle_One.x - x;
yv = obj_Circle_One.y - y;

x += xv * 0.01;
y += yv * 0.01;

event_inherited();