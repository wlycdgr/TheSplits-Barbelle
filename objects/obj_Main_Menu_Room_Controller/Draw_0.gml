/// @description Draw menu
scr_Menu_Draw(main_menu);

var t1_x = title_tween.paused ? title1_x : title_x_paths[0].value;
var t2_x = title_tween.paused ? title2_x : title_x_paths[1].value;
scr_Splitsfont_Draw_String(title1, t1_x, title1_y);
scr_Splitsfont_Draw_String(title2, t2_x, title2_y);

scr_Splitsfont_Draw_String(credits_string, credits_string_x, 700);
