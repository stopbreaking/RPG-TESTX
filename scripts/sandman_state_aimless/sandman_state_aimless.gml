function sandman_state_aimless(){
	var _dir = point_direction(x, y, obj_guy.x, obj_guy.y);
	
	hspd = lengthdir_x(spd, _dir);
	vspd = lengthdir_y(spd, _dir);
	
	x += hspd;
	if(place_meeting(x,y, obj_guy)) hurt_player(_dir, attack_force, 1);
	check_collisions_objects_prev_frame_horizontal();
	check_collisions_tiles_fixed_horizontal();
	
	y += vspd;
	if(place_meeting(x,y, obj_guy)) hurt_player(_dir, attack_force, 1);
	check_collisions_objects_prev_frame_vertical_exclusive();
	check_collisions_tiles_fixed_vertical();
}

/*
if(distance_to_point(obj_guy.x, obj_guy.y) > pursuit_speed) move_towards_point(obj_guy.x, obj_guy.y, pursuit_speed);
	else {x = obj_guy.x; y = obj_guy.y;}
*/