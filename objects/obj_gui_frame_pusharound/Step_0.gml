if(snap) {
	x += (snapx - x)/snap_ease;
	y += (snapy - y)/snap_ease;
	
	if(place_meeting(x, y, obj_hand)) 
	{
		var _pushdir = point_direction(mouse_x, mouse_y, x, y);
		// try easing function by using point_distance??
		// var _eased_push_force = point_distance(mouse_x, mouse_y, x, y)/push_easing; // pretty cool runs away from hand but not what I'm looking for :P
		var _eased_push_force = push_force_eased / point_distance(mouse_x, mouse_y, x, y);
		x += lengthdir_x(_eased_push_force, _pushdir);
		y += lengthdir_y(_eased_push_force, _pushdir);
	}
}