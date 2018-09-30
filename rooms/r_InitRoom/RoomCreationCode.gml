// make sure we are using a different random seed each time.
// may wanna disable this for debugging.
randomise();

// nice circles
draw_set_circle_precision(64);

// turn on anti-aliasing and vsync
display_reset(8, 0);

// Load up our macros and set our global vars
script_execute(scr_MACROS_and_GLOBALS);
script_execute(scr_Splitsfont_Reset_DefaultTweaks);

// Create all our global persistent objects
global.sound = instance_create_layer(0, 0, "Instances", obj_SoundManager);
global.steam = instance_create_layer(0, 0, "Fader", obj_Steam_Liason);
global.splitsfont = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont);
global.escaper = instance_create_layer(0, 0, "Instances", obj_Escaper);
global.game_settings = instance_create_layer(0, 0, "Instances", obj_Game_Settings);
global.room_state_tracker = instance_create_layer(0, 0, "Instances", obj_Room_State_Tracker);

//room_goto(r_GameMakerAndRaylibLogos);
room_goto(r_MainMenu);