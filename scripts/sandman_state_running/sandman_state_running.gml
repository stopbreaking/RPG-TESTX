function sandman_state_running(){
	if(path_exists(path)) path_clear_points(path);
	else path = path_add();
	mp_grid_path(global.mapgrid, path, x, y, obj_guy.x, obj_guy.y, true);
	// try again in case he's slightly overlapping with a wall
	if(path_exists(path) && path_get_length(path) <= 0) mp_grid_path(global.mapgrid, path, x, y, obj_guy.x, obj_guy.y + obj_guy.bbox_center_y_offset, true);
	
	// New collision code
	var _dir = point_direction(x, y, path_get_x(path, (8.0/path_get_length(path))), path_get_y(path, (8.0/path_get_length(path))));
	
	hspd = lengthdir_x(spd, _dir);
	vspd = lengthdir_y(spd, _dir);
	
	
	// Move and check collisions // Needs additions for tiles!!!!
	x += hspd;
	if(place_meeting(x,y, obj_guy)) hurt_player(_dir, attack_force, 1);
	check_collisions_objects_prev_frame_horizontal();
	check_collisions_tiles_fixed_horizontal();
	
	y += vspd;
	if(place_meeting(x,y, obj_guy)) hurt_player(_dir, attack_force, 1);
	check_collisions_objects_prev_frame_vertical_exclusive();
	check_collisions_tiles_fixed_vertical();
	
	
	/*
	// okay fuck it just follow the path with in-game speed, what's the worst that can happen??
	direction = point_direction(x, y, path_get_x(path, (8.0/path_get_length(path))), path_get_y(path, (8.0/path_get_length(path))));
	speed = pursuit_speed;
	check_collisions_objects();
	path_position = 0; */
	if(!path_exists(path) || path_get_length(path) > 0) return;
	state = sandman_state_aimless;
}