if(global.game_paused) return;

script_execute(state);

depth = -bbox_bottom;



/*
//Reset speed! don't miss this
speed = 0;
path_end();

if(path_exists(path)) path_clear_points(path);
	else path = path_add();
	mp_grid_path(global.mapgrid, path, x, y, obj_guy.x, obj_guy.y, true);
	// try again in case he's slightly overlapping with a wall
	if(path_exists(path) && path_get_length(path) <= 0) mp_grid_path(global.mapgrid, path, x, y, obj_guy.x, obj_guy.y + obj_guy.bbox_center_y_offset, true);
	
	// New collision code
	var _dir = point_direction(x, y, path_get_x(path, (8.0/path_get_length(path))), path_get_y(path, (8.0/path_get_length(path))));
	
	hspd = lengthdir_x(pursuit_speed, _dir);
	vspd = lengthdir_y(pursuit_speed, _dir);
	
	
	// Move and check collisions // Needs additions for tiles!!!!
	x += hspd;
	if(place_meeting(x,y, obj_guy)) hurt_player(_dir, attack_force, 1);
	check_collisions_objects_prev_frame_horizontal();
	
	y += vspd;
	if(place_meeting(x,y, obj_guy)) hurt_player(_dir, attack_force, 1);
	check_collisions_objects_prev_frame_vertical();
//script_execute(state);
*/
//depth = -bbox_bottom;