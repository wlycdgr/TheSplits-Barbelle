/// @param {integer} menu_id The id of the menu

var selection_label = argument0.labels[argument0.index];

reset_menu = false;

switch(selection_label) {

case "BACK":
	reset_menu = true;
	
	with (global.main_menu_controller) {
		main_menu.active = true;
		difficulty_menu.active = false;
	}
	
	break;
	
// other menus
case "CONTINUE":
	reset_menu = true;
	
	with (global.game) { event_user(2); }
	break;
	
case "CREDITS":
	global.room_state_tracker.state = rs_room_change_requested;
	global.room_state_tracker.target_room = r_Credits;
	
	break;
	
case "EXIT":
	game_end();
	
	break;
	
case "MAIN MENU":
	if (room == r_Gameplay) {
		with (global.game) { event_user(4); }
	}
	
	break;
	
case "PLAY":
	with (global.main_menu_controller) {
		main_menu.active = false;
	}
	
	global.room_state_tracker.state = rs_room_change_requested;
	global.room_state_tracker.target_room = r_Gameplay;
	
	break;
	
case "PLAY AGAIN":
	reset_menu = true;
	
	with (global.game) { event_user(3); }
	break;
	
case "TUTORIAL":
	global.room_state_tracker.state = rs_room_change_requested;
	global.room_state_tracker.target_room = r_Tutorial;
	
	break;
}

if (reset_menu) {
	with (argument0) {
		index = 0;

		for (var i = 0; i < item_count; i++){
			label_states[i] = menu_item_state_unselected;
			label_font_weights[i] = menu_item_font_weight_min;
			scr_Splitsfont_Set_Weight(label_strings[i], label_font_weights[i]);
		}
		
		label_states[0] = menu_item_state_selected;
		label_font_weights[0] = menu_item_font_weight_max;
		scr_Splitsfont_Set_Weight(label_strings[0], label_font_weights[0]);
	}
}
