/// @description Init
slide_index = 0;

// initialize slide string tweak values used by event_user(2) to tweak the slide strings
event_user(0); // tweak_values
event_user(1); // tweak_values_1

// create and tweak slide strings
// creates
//	slides_y array -> y positions of the slide strings
//	slides array -> the slide strings
//	string_counts array -> the number of strings in each group
event_user(2);

// create the slide tween that will take care of sliding our slide strings around
// creates & populates
//	slide_tween -> the slide tween instance
//	x_paths[i, j] -> array of the paths for the two ( by default) sets of slide strings
event_user(3);

// extra tweaks 'Trollcore' and the names
trollcore_angle = 30;
scr_Splitsfont_Set_Angle(slides[0, 0], trollcore_angle);

names_angle = 15;
scr_Splitsfont_Set_Angle(slides[1, 1], names_angle);
scr_Splitsfont_Set_Angle(slides[1, 3], names_angle);