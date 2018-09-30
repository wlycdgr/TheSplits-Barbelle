/// @description Begin Step -> Detect scroll actions

if (room == r_Gameplay) {
	scroll_down = keyboard_check_pressed(vk_down);
	scroll_up = keyboard_check_pressed(vk_up);
}

else {
	scroll_down = 
		keyboard_check_pressed(vk_down) || 
		keyboard_check_pressed(ord("S")) ||
		keyboard_check_pressed(ord("K"));
	scroll_up =
		keyboard_check_pressed(vk_up) ||
		keyboard_check_pressed(ord("W")) ||
		keyboard_check_pressed(ord("I"));
}

scroll_delay_counter = max(0, scroll_delay_counter - 1);

var gp_num = gamepad_get_device_count();
for (var i = 0; i < gp_num; i++;){
	if (!gamepad_is_connected(i)) continue;
	
	if (gamepad_button_check_pressed(i, gp_padu)) { scroll_up = true; }
	if (gamepad_button_check_pressed(i, gp_padd)) { scroll_down = true; }
	
	if (scroll_delay_counter <= 0){
		var gav = gamepad_axis_value(i, gp_axislv);
		
		if (gav > 0.5){
			scroll_down = true;
			scroll_delay_counter = scroll_delay;
		}
		else if (gav < -0.5){
			scroll_up = true;
			scroll_delay_counter = scroll_delay;
		}
	}
}