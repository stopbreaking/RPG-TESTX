hspd = lengthdir_x(spd, point_direction(x, y, mouse_x, mouse_y));
vspd = lengthdir_y(spd, point_direction(x, y, mouse_x, mouse_y));



x += hspd;
check_collisions_objects_prev_frame_horizontal();

y += vspd;
check_collisions_objects_prev_frame_vertical_exclusive();