if (obj_Gameplay_Room_Controller.state != gs_playing) {
	speed = 0;
	exit;
}

xv = obj_Circle_Two.x - x;
yv = obj_Circle_Two.y - y;

x += xv * 0.01;
y += yv * 0.01;

event_inherited();