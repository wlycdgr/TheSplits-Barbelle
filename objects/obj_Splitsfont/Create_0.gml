/// @description Initialize font for use by Splitsfont_String objects

//		CURRENTLY SUPPORTED CHARACTERS:
//		character		utf8
//		---------		----
//
//		space			32
//		"				34
//		,				44
//		-				45
//		.				46
//		0-9				48-57
//		:				58
//		;				59
//		?				63
//		A-Z				65-90
//		[				91
//		]				93
//		_				95


// Defines 
//	tweak_scripts: an array of property setter scripts that scr_Splitsfont_Set_Tweaks iterates over
//  tweak_scripts_len: the length of this array
event_user(0);

// used to size the vertex and line arrays
WLY_HighestOrdCode = 96;

// Defines
//	glyph_vertex_data: an array of arrays of vertex arrays; each element stores vertex data for a single char
//  glyph_line_data: same deal but for the edges
event_user(1);

// Defines
//	glyph_vertex_counts: an array of vertex counts for each glyph
//	glyph_line_counts: same deal but for the edges
event_user(2);

// Defines
//	glyph_widths: an array storing the widths of each glyph
event_user(3);

// TODO: choose & specify glyph-specific kern values
for (var i = 0; i < WLY_HighestOrdCode; i++){
	kern_multipliers[i] = 1.0;
}




