/// @description Init
draw_set_color(c_black);

var title1_text = "BARBELLE";
title1_size = 0.025;
var title1_weight = 0.0025;
var title1_kern = 0.2;
var title1_rotationSpeed = 0; //0180;
var title1_angle = 0;//10;


// adjust and add/remove below as needed

title1 = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(title1, title1_text);
scr_Splitsfont_Set_Tweaks(title1, [title1_size, title1_weight, title1_kern, title1_rotationSpeed, title1_angle]);
title1_x = window_x_center - scr_Splitsfont_Get_Width(title1) / 2;
title1_y = 0.4 * window_height;

title_tween = instance_create_layer(0, 0, "Splitsfont", obj_SlideTween);
title_tween.close_enough *= 0.01;

title_x_paths[0] = scr_SlideTween_Add_Default_Path(title_tween, title1, slide_left);

// MAIN MENU
main_menu_labels[0] = "PLAY"
main_menu_labels[1] = "TUTORIAL";
main_menu_labels[2] = "EXIT";

main_menu = scr_Menu_NEW(
	window_x_center, 0.8 * window_height,
	main_menu_labels,
	menu_is_tweened
);


credits_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(credits_string, "A THE SPLITS GAME BY WLY_CDGR. WITH SOME SOUNDS AND COLORS BY MARLEY HALL.")
scr_Splitsfont_Set_Tweaks(credits_string, [0.01, 0.0004, 0.01, 0, 0]);
credits_string_x = room_width / 2 - scr_Splitsfont_Get_Width(credits_string) / 2;