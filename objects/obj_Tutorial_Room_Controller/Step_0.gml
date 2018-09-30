///// @description Update string tweens, rotate strings, change screens
screen_counter += 1;

if (screen_0_tween.paused) {
	if (
		keyboard_check_pressed(vk_anykey) ||
		gamepad_button_check_pressed(0, gp_face1) ||
		gamepad_button_check_pressed(0, gp_face2) ||
		gamepad_button_check_pressed(0, gp_face3) ||
		gamepad_button_check_pressed(0, gp_face4)
	){
		screen_0_tween.paused = false;
	}
}
	
else if (
	(screen_counter > lead_time && screen_0_tween.off_screen) ||
	screen_0_tween.complete
) {
	room_goto(r_MainMenu);
}