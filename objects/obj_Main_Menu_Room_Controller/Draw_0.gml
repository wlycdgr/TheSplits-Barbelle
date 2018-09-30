/// @description Draw menu
scr_Menu_Draw(main_menu);

var t1_x = title_tween.paused ? title1_x : title_x_paths[0].value;
scr_Splitsfont_Draw_String(title1, t1_x, title1_y);

scr_Splitsfont_Draw_String(credits_string, credits_string_x, 700);
