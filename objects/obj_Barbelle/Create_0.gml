instance_create_layer(room_width / 3, room_height / 2, "Circles", obj_Circle_One);
instance_create_layer(room_width * (2 / 3), room_height / 2, "Circles", obj_Circle_Two);

max_line_thickness = 10;
current_line_thickness = max_line_thickness;

max_possible_distance = point_distance(0, 0, room_width, room_height);
half_max = max_possible_distance / 2;

dead = false;