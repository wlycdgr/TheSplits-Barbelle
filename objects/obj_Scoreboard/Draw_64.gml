/// @description Draw the score info
draw_set_color(c_black);

var score_as_string = string(floor(points));
var score_as_string_len = string_length(score_as_string);
for (var i = 0; i < score_as_string_len; i++) {
	scr_Splitsfont_Draw_String(
		number_strings[real(string_char_at(score_as_string, i + 1))],
		15 + 15 * i, 15
	);
}

draw_set_color(c_gray);
var score_as_string = string(floor(current_high_score));
var score_as_string_len = string_length(score_as_string);
for (var i = 0; i < score_as_string_len; i++) {
	scr_Splitsfont_Draw_String(
		number_strings[real(string_char_at(score_as_string, i + 1))],
		1100 + 15 * i, 15
	);
}

scr_Splitsfont_Draw_String(multiplier_label, 15, 50);

draw_set_color(c_black)
draw_line(15, 75, 15 + 200 * ((multiplier_time_limit - multiplier_counter) / multiplier_time_limit), 75);
var multiplier_as_string = string(floor(multiplier));
scr_Splitsfont_Draw_String(number_strings[real(string_char_at(multiplier_as_string, 1))], 30, 45);