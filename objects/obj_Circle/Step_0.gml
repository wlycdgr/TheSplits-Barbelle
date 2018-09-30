if (obj_Gameplay_Room_Controller.state != gs_playing) {
	speed = 0;
	exit;
}

xv = gamepad_axis_value(0, x_axis);
yv = gamepad_axis_value(0, y_axis);

x += xv * wly_speed;
y += yv * wly_speed;
