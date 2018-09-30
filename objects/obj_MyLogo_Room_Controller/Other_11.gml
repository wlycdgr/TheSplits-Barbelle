/// @description Create -> Initialize tweak_values_1
var tweak_settings = [
	[0.03, 0.0, 0.04, 360, 0.1],
	[0.15, 0.03, 0.05, 0.0, 0.21],
	[0.03, 0.0, 0.04, 360.0, 0.56],
	[0.1, 0.02, 0.04, 0.0, 0.66]
];

var values;
for (var i = 0, i_len = array_length_1d(tweak_settings); i < i_len; i++){
	values = tweak_settings[i];
	for (var j = 0, j_len = array_length_1d(values); j < j_len; j++){
		tweak_values_1[i, j] = values[j];
	}
}