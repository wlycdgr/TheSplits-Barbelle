/// @description Set state and choose string
// You can write your code in this editor

if (global.scoreboard.points > global.scoreboard.current_high_score) {
	ribbon_state = gors_new_high_score;
}
else {
	ribbon_state = gors_too_bad;
	
	var random_string_index = irandom_range(0, too_bad_strings_count - 1);
	too_bad_string = too_bad_strings[random_string_index];
	too_bad_string_x_offset = too_bad_string_x_offsets[random_string_index];
}

event_inherited();