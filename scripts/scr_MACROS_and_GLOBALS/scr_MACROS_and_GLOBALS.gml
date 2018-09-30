// Game context
#macro game_fps 60
#macro window_height 720
#macro window_width 1280
#macro window_x_center 640
// /Game context

// Misc Util
#macro degrees_to_rad (pi / 180)
#macro not_set -12345
#macro above_window -1000
#macro left_of_window -1000
// /Misc Util

// SPLITSFONT
#macro splitsfont_size_menuItem 0.02
#macro splitsfont_weight_menuItem 0.002
#macro splitsfont_size_ribbonMenuHeader 0.06
#macro splitsfont_size_scoreboard 0.02
#macro splitsfont_weight_scoreboard 0.004
// /SPLITSFONT

// Sliding Ribbon
#macro sliding_ribbon_y 180
#macro sliding_ribbon_width window_width
#macro sliding_ribbon_height 360
#macro sliding_ribbon_slide_in_speed_in_pixels_per_frame (2 * (window_width / game_fps))
#macro sliding_ribbon_slide_out_speed_in_pixels_per_frame (2 * sliding_ribbon_slide_in_speed_in_pixels_per_frame)
#macro srs_inactive 0
#macro srs_sliding_in 1
#macro srs_ready 2
#macro srs_selection_made 3
#macro srs_sliding_out 4
// /Sliding Ribbon

// Menu UI
#macro menu_color_selected c_red
#macro menu_color_unselected c_black
#macro menu_halign fa_center
#macro menu_vertical_spacing 0.05 * window_height
#macro menu_item_splitsfont_size 0.025
#macro menu_item_splitsfont_kern 0.02
#macro menu_item_splitsfont_rotationSpeed 0.0
#macro menu_item_splitsfont_angle 0.0
#macro menu_item_state_unselected -1
#macro menu_item_state_selected 1
#macro menu_item_font_weight_min 0.001
#macro menu_item_font_weight_max 0.004
#macro menu_item_font_weight_change_proportion_per_frame 0.2
#macro menu_is_tweened true
#macro menu_is_not_tweened false
// / Menu UI

// Sound
#macro sfx_scroll_menu 1 // ACTIVE
#macro sfx_select_menu 5 // ACTIVE
#macro sfx_slide_out 9 // ACTIVE
// /Sound

// Game Settings
#macro game_difficulty_cool 0
#macro game_difficulty_easy 1
#macro game_difficulty_medium 2
#macro game_difficulty_hard 3
#macro game_difficulty_difficult 4
// /Game Settings


// Core Mechanics 

// /Core Mechanics


// Achievement and leaderboard info
// Steam, Itch, ....

// /Achievement and leaderboard info


// State Machine
#macro gs_fading_in 0
#macro gs_fading_out 1
#macro gs_game_over 2
#macro gs_paused 4
#macro gs_playing 5
#macro gs_restarting 6

#macro fs_inactive 0
#macro fs_fading_in 1
#macro fs_fading_out 2
#macro fs_done 3

#macro slide_state_sliding_in 0
#macro slide_state_slowing_down 1
#macro slide_state_sliding_out 2
#macro slide_left - 1
#macro slide_right 1
#macro slide_three_window_widths window_width * 3 

// ROOM STATE TRACKER
#macro rs_setting_up_room 0
#macro rs_normal_room_operations 1
#macro rs_room_change_requested 2
#macro rs_breaking_down_room 3

// GAME OVER RIBBON STATES
#macro gors_cool 0
#macro gors_new_high_score 1
#macro gors_too_bad 2


