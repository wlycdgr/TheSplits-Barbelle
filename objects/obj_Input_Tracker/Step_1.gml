/// @description Set input flags
// You can write your code in this editor
is_exit_pressed = keyboard_check_pressed(vk_escape);

is_pause_pressed = keyboard_check_pressed(vk_space);
var gp_num = gamepad_get_device_count();
for (var i = 0; i < gp_num; i++;){
	if (!gamepad_is_connected(i)) continue;
	
	if (
		gamepad_button_check_pressed(i, gp_select) ||
		gamepad_button_check_pressed(i, gp_start) 
	){
		is_pause_pressed = true;
	}
}


// Specify desired semantic input mappings

// EXAMPLE: FUNNY FINGERS
// is_leftmost_pressed = keyboard_check_pressed(ord("Q"));
// is_second_leftmost_pressed = keyboard_check_pressed(ord("W"));
// is_third_leftmost_pressed = keyboard_check_pressed(ord("E"));
// is_fourth_leftmost_pressed = keyboard_check_pressed(ord("R"));
// is_fifth_leftmost_pressed = keyboard_check_pressed(ord("T"));

// is_rightmost_pressed = keyboard_check_pressed(ord("P"));
// is_second_rightmost_pressed = keyboard_check_pressed(ord("O"));
// is_third_rightmost_pressed = keyboard_check_pressed(ord("I"));
// is_fourth_rightmost_pressed = keyboard_check_pressed(ord("U"));
// is_fifth_rightmost_pressed = keyboard_check_pressed(ord("Y"));