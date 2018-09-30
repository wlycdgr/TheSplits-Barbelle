/// @description Begin Step -> Detect select input

select = 
	keyboard_check_pressed(vk_enter) ||
	keyboard_check_pressed(vk_space);

if (!select){
	var gp_num = gamepad_get_device_count();
	for (var i = 0; i < gp_num; i++;){
		if (!gamepad_is_connected(i)) continue;
	
		if (
			gamepad_button_check_pressed(i, gp_face1) ||
			gamepad_button_check_pressed(i, gp_face2) ||
			gamepad_button_check_pressed(i, gp_face3) ||
			gamepad_button_check_pressed(i, gp_face4)
		){
			select = true;
		}
	}
}