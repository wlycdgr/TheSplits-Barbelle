/// @description Create -> Create slide tween
slide_tween = instance_create_layer(0, 0, "Splitsfont", obj_SlideTween);
x_paths[0, 0] = scr_SlideTween_Add_Default_Path(slide_tween, slides[0, 0], slide_left);
x_paths[0, 1] = scr_SlideTween_Add_Default_Path(slide_tween, slides[0, 1], slide_left);
x_paths[0, 2] = scr_SlideTween_Add_Default_Path(slide_tween, slides[0, 2], slide_right);
x_paths[0, 3] = scr_SlideTween_Add_Default_Path(slide_tween, slides[0, 3], slide_right);

x_paths[1, 0] = scr_SlideTween_Add_Default_Path(slide_tween, slides[1, 0], slide_right);
x_paths[1, 1] = scr_SlideTween_Add_Default_Path(slide_tween, slides[1, 1], slide_right);
x_paths[1, 2] = scr_SlideTween_Add_Default_Path(slide_tween, slides[1, 2], slide_left);
x_paths[1, 3] = scr_SlideTween_Add_Default_Path(slide_tween, slides[1, 3], slide_left);