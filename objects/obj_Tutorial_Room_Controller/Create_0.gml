lead_time = game_fps / 4;
screen_counter = 0;

// screen_index 0
instructions1_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(instructions1_string, "A CONTROLLER IS REQUIRED");
scr_Splitsfont_Set_Tweaks(instructions1_string, [0.05, 0.009, 0.018, 0, 30]);
instructions1_string_y = 0.2 * window_height;

instructions2_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(instructions2_string, "USE ANALOG STICKS AND TRIGGERS");
scr_Splitsfont_Set_Tweaks(instructions2_string, [0.05, 0.009, 0.018, 0, 30]);
instructions2_string_y = 0.425 * window_height;

instructions3_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(instructions3_string, "DON'T TOUCH ANYTHING TO AVOID DEATH");
scr_Splitsfont_Set_Tweaks(instructions3_string, [0.05, 0.009, 0.018, 0, 30]);
instructions3_string_y = 0.65 * window_height;

screen_0_tween = instance_create_layer(0, 0, "Splitsfont", obj_SlideTween);
instructions1_string_x_path = scr_SlideTween_Add_Default_Path(screen_0_tween, instructions1_string, slide_right);
instructions2_string_x_path =scr_SlideTween_Add_Default_Path(screen_0_tween, instructions2_string, slide_left);
instructions3_string_x_path =scr_SlideTween_Add_Default_Path(screen_0_tween, instructions3_string, slide_left);