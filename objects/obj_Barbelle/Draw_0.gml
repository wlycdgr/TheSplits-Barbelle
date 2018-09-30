/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_gray);
draw_line_width(obj_Circle_One.x, obj_Circle_One.y, obj_Circle_Two.x, obj_Circle_Two.y, current_line_thickness);

draw_text(10, 100, "wly_speed: " + string(obj_Circle_One.wly_speed));