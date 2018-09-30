/// @description Init
//draw_debug = true;
//step_debug = true;

// overlay stuff
global.steam_overlay_activated = false;

// put STAT vars here

// ach unlock status
unlocked = ds_map_create();

ach_unlock_states_retrieved = false;

// achievements stuff
ach_api_names = [
	// add ach Steam API names
];

ach_names = [
	// add ach human readable names
];

ach_debug_names = [
	// add ach debug names
];

// Steam screenshot counter
screenshot_number = 0;

// Steam connection status and properites
is_initialised = false;
are_stats_ready = false
ach_unlock_states_retrieved = false;
is_overlay_enabled = false;
persona_name = "DEFAULT";
user_steam_id = -1;
is_user_logged_on = false;
app_id = -1;
user_account_id = -1;

