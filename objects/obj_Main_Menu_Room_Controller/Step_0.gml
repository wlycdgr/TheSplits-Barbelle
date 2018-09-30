/// @description Navigate menu, twitch

// twitch title
event_user(0);

// animate & navigate menu
switch (global.room_state_tracker.state) {
case rs_setting_up_room:
	if (title_tween.paused) {
		global.room_state_tracker.state = rs_normal_room_operations;
		event_user(2);
	}
	event_user(10);
	break;
	
case rs_normal_room_operations:
	event_user(10);
	break;

case rs_room_change_requested:
	scr_SlideTween_Force_Slide_Out(title_tween);
	scr_SlideTween_Force_Slide_Out(main_menu.slide_tween);
	global.room_state_tracker.state = rs_breaking_down_room;
	break;
	
case rs_breaking_down_room:
	if (
		title_tween.off_screen &&
		main_menu.slide_tween.off_screen
	) {
		room_goto(global.room_state_tracker.target_room);
	}
	break;
}
