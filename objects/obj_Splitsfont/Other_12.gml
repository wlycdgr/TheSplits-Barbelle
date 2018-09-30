/// @description Create -> Calculate and store glyph vertex and line counts

glyph_vertex_counts = array_create(WLY_HighestOrdCode, not_set);
glyph_line_counts = array_create(WLY_HighestOrdCode, not_set);

var gvd;
for (var i = 0; i < WLY_HighestOrdCode; i++) {
	gvd = glyph_vertex_data[i];
	
	// only some of the glyphs in the 0-WLY_HighestOrdCode Unicode range are supported
	if (not_set == gvd) continue;
	
	glyph_vertex_counts[i] = array_length_1d(gvd);
	glyph_line_counts[i] = array_length_1d(glyph_line_data[i]);
}