/// @description Handle menu navigation

if (!main_menu.active) return;

scr_Menu_Scroll(main_menu);
if (scr_Menu_Selection_Made(main_menu)) {
	scr_Menu_Act_On_Selection(main_menu);
}
