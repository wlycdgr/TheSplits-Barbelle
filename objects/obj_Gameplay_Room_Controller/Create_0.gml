/// @description Init
global.input_tracker = instance_create_layer(0, 0, "Controllers", obj_Input_Tracker);
global.scoreboard = instance_create_layer(0, 0, "Controllers", obj_Scoreboard);

game_over_sliding_ribbon = instance_create_layer(
	window_width, sliding_ribbon_y, "SlidingRibbons", obj_Game_Over_Menu_Sliding_Ribbon
);

paused_sliding_ribbon = instance_create_layer(
	window_width, sliding_ribbon_y, "SlidingRibbons", obj_Paused_Sliding_Ribbon
);

// BARBELLE specifics
instance_create_layer(room_width / 3, room_height / 2, "Instances", obj_Circle_One);
instance_create_layer(room_width * (2 / 3), room_height / 2, "Instances", obj_Circle_Two);