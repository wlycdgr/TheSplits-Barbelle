/// @description Create -> Calculate and store glyph widths

glyph_widths = array_create(WLY_HighestOrdCode, 0.0);

var gvd;
var gvd_vertex;
var g_width;
for (var i = 0; i < WLY_HighestOrdCode; i++) {
	gvd = glyph_vertex_data[i];
	
	if (not_set == gvd) continue;
	
	g_width = 0.0;
	for (var j = 0, gvd_len = array_length_1d(gvd); j < gvd_len; j++) {
		gvd_vertex = gvd[j];
		g_width = max(g_width, gvd_vertex[0] + gvd_vertex[2]);
	}	
	
	glyph_widths[i] = g_width;
}