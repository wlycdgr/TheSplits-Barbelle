/// @description Twitch step

if (twitching_up) {
	current_size += twitch_up_per_frame;
	if (current_size >= target_size) {
		twitching_up = false;
		twitching_down = true;
	}
	
	event_user(1);
}

else if (twitching_down) { 
	current_size -= twitch_down_per_frame;
	if (current_size <= title1_size) {
		current_size = title1_size;
		twitching_down = false;
		event_user(2);
	}
	
	event_user(1);
}
