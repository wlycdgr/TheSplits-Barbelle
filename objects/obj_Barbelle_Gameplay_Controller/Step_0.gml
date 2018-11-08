/// @description Update based on state
switch (state) {
case gs_fading_out:
	if (
		srs_inactive == game_over_sliding_ribbon.state &&
		srs_inactive == paused_sliding_ribbon.state
	) {
		room_goto(r_MainMenu);
	}
	break;
	
case gs_game_over:
	if (srs_selection_made == game_over_sliding_ribbon.state) {
		scr_Menu_Act_On_Selection(game_over_sliding_ribbon.menu);
	}
	break;
	
case gs_paused:
	if (srs_selection_made == paused_sliding_ribbon.state) {
		scr_Menu_Act_On_Selection(paused_sliding_ribbon.menu);
	}
	break;
	
case gs_playing:
	if (global.input_tracker.is_pause_pressed) 
		{ event_user(1); } // on pause
	
	if (obj_Barbelle.dead)
		{ event_user(0); }
	
	break;
		
case gs_restarting:
	if (
		srs_inactive == game_over_sliding_ribbon.state &&
		srs_inactive == paused_sliding_ribbon.state
	) {
		room_restart();
	}
	break;
}