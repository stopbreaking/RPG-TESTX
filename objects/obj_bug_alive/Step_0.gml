if((place_meeting(x, y, obj_guy) && obj_guy.state == player_state_running) || place_meeting(x, y, obj_explosion))
{
	instance_change(obj_bug_dead, true);
	speed = 0;
	depth = 100;
	return;
}

if(scuttle) 
{
	var _dir = point_direction(x, y, targetx, targety);
	hspeed = lengthdir_x(move_speed, _dir);
	vspeed = lengthdir_y(move_speed, _dir);
	expected_move_distance -= move_speed;
	check_collisions_objects();
	if(expected_move_distance <= 0) scuttle = false;
}
else 
{
	speed = 0;
	image_speed = 0;
	scuttle_pause_timer --;
	if(scuttle_pause_timer <= 0 ) {
		randomize();
		targetx = random_range(x - move_range/2, x + move_range/2);
		randomize();
		targety = random_range(y - move_range/2, y + move_range/2);
		expected_move_distance = point_distance(x, y, targetx, targety);
		scuttle = true;
		randomize();
		scuttle_pause_timer = random_range(scuttle_pause_min * FRAME_RATE, scuttle_pause_max * FRAME_RATE);
		image_speed = scuttle_animation_speed;
	}
}