if (obj_Gameplay_Room_Controller.state != gs_playing) {
	speed = 0;
	exit;
}

xv = gamepad_axis_value(0, x_axis);
yv = gamepad_axis_value(0, y_axis);

if (xv == 0){
	xv = 0.01;
}

angle = point_direction(0, 0, xv, yv);
mag_point = point_distance(0, 0, xv, yv);

if (mag_point > 1){
	mag_point = 1;
}

move_towards_point(
	x + xv*100,
	y + yv*100,
	mag_point * wly_speed
);

