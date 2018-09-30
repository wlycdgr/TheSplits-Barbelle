/// @description Create -> Create and tweak strings
var slide_strings_arrays = [
	["TROLLCORE ENTERPRISES TM", "AND", "ONE MOTION GAMES", "PRESENT"],
	["A GAME BY", "WLY_CDGR", "WITH SPRITES AND SOUNDS BY", "MARLEY HALL"]
];

var ssa_len = array_length_1d(slide_strings_arrays);
var ss = -1;
var ss_len = -1;
var new_string = -1;

for (var i = 0; i < ssa_len; i++) {
	ss = slide_strings_arrays[i];
	ss_len = array_length_1d(ss);
	
	string_counts[i] = ss_len;
	
	for (var j = 0; j < ss_len; j++) {
		new_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
		
		scr_Splitsfont_Set_Text(new_string, ss[j]);
		
		var twa = (1 == i) ? tweak_values_1 : tweak_values;
		scr_Splitsfont_Set_Size(new_string, twa[j, 0]);
		scr_Splitsfont_Set_Weight(new_string, twa[j, 1]);
		scr_Splitsfont_Set_Kern(new_string, twa[j, 2]);
		scr_Splitsfont_Set_RotationSpeed(new_string, twa[j, 3]);
		
		slides_y[i, j] = twa[j, 4];	

		slides[i, j] = new_string;
	}
}