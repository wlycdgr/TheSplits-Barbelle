/// @description Init

// TODO: implement non-Steam save/load for high score
current_high_score = highscore_value(1);

points = 0;
target_points = 0;



scr_Splitsfont_Set_DefaultTweaks([0.025, 0.003, 0.05, 0, 0]);
for (var i = 0; i < 10; i++) {
	number_strings[i] = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
	scr_Splitsfont_Set_Text(number_strings[i], string(i));
}
scr_Splitsfont_Reset_DefaultTweaks();


// just multiplier things
multiplier = 1;
max_multiplier = 4;
multiplier_counter = 0;
multiplier_time_limit = 180;

scr_Splitsfont_Set_DefaultTweaks([0.015, 0.001, 0.05, 0, 0]);
multiplier_label = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(multiplier_label, "X");
scr_Splitsfont_Reset_DefaultTweaks();