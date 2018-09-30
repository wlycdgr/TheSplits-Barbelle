/// @function scr_Steam_UpdateHighScoreLeaderboard(leaderboard_name, stat_name, new_value)

with (global.steam) {
	// we use a stat because steam_get_stat_int is a synchronous call
	// and this makes the logic simpler than getting the high score from the leaderboard
	// asynchronously
	var current_high_score = steam_get_stat_int(argument1);

	if (argument2 > current_high_score) {
		steam_set_stat_int(
			argument1,
			argument2
		);
	
		steam_upload_score(
			argument0,
			argument2
		);
	}
}