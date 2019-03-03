/// @description Incr frames, handle reaching of score thresholds
if (gs_playing == global.game.state) {
	if (target_points > points) {
		points += (target_points - points) / 10;
	}
	
	// count down the multiplier counter
	if (multiplier > 1){
		multiplier_counter += 1;
	}
	
	if (multiplier_counter >= multiplier_time_limit){
		multiplier = 1;
		multiplier_counter = 0;
	}
	
	// If a blue dude has crossed the barbelle line, we get points!
	var _list = ds_list_create();
	var _num = collision_line_list(obj_Circle_One.x, obj_Circle_One.y, obj_Circle_Two.x, obj_Circle_Two.y, obj_Energy, true, false, _list, false);
	if (_num > 0){
		for (var i = 0; i < _num; i++){
			var energy = _list[| i];
			
			energy.life_counter = 0;
			target_points += 10 * multiplier;
			multiplier = min(max_multiplier, multiplier + 1);
			multiplier_counter = 0;
			
			/*
			if (energy.life_counter > 200){
				energy.life_counter = 200;
			}
			energy.life_counter -= 40;
			
			if (energy.life_counter <= 0){
				target_points += 10 * multiplier;
				multiplier = min(max_multiplier, multiplier + 1);
				multiplier_counter = 0;
			}
			*/
		}
	}
	ds_list_destroy(_list);

	if (points > current_high_score){
		current_high_score = points;
		highscore_add("Bananas Foster", points);
	}
}
