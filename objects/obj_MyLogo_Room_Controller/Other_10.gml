/// @description Create -> Initialize tweak_values

var tweak_settings = [
	[0.07, 0.03, 0.0, 0.0, 0.14], // size, weight, kern, rotation speed, y
	[0.03, 0.0, 0.13, 0.0, 0.35],
	[0.14, 0.01, 0.01, 360.0, 0.53],
	[0.03, 0.0, 0.05, 0.0, 0.82]
];

var values;
for (var i = 0, i_len = array_length_1d(tweak_settings); i < i_len; i++){
	values = tweak_settings[i];
	for (var j = 0, j_len = array_length_1d(values); j < j_len; j++){
		tweak_values[i, j] = values[j];
	}
}