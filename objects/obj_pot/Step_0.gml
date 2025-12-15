/*
if(obj_guy.state == player_state_pushing)
{
		if(place_meeting(x - lengthdir_x(obj_guy.run_speed, push_dir), y - lengthdir_y(obj_guy.run_speed, push_dir), obj_collisions)) 
		{
			ignore_collisions = false;
			with(obj_guy)
			{
				check_collisions_objects_prev_frame_horizontal();
				check_collisions_objects_prev_frame_vertical();
			}
		}
}
*/
if(obj_guy.state == player_state_falling) return;
if(!pushing) 
{
	if(place_meeting(x, y, obj_guy)) {
		push_dir = point_direction(x, y, obj_guy.x, obj_guy.y);
		pushing = true;
		ignore_collisions = false;
		if(obj_guy.state == player_state_sprinting)
		{
			obj_guy.run_speed -= slow_factor*obj_guy.sprint_factor;
		} else {
			obj_guy.run_speed -= slow_factor;
		}
	}
} 
if(pushing)
{
	if(place_meeting(x + lengthdir_x(push_check_distance, push_dir), y + lengthdir_y(push_check_distance, push_dir), obj_guy))
	{
		push_dir = point_direction(x, y, obj_guy.x, obj_guy.y);
		push_timer --;
		if(push_timer == 0) {
			set_player_state_pushing(obj_guy);
			ignore_collisions = true;
		}
	} else 
	{
		ignore_collisions = true;
		pushing = false;
		push_timer = push_timer_max;	
		
		if(obj_guy.state == player_state_pushing_fast)
		{
			obj_guy.run_speed += slow_factor*obj_guy.sprint_factor;
		} else {
			obj_guy.run_speed += slow_factor;
		}
		exit_player_state_pushing(obj_guy);
	}
	
	check_collisions_objects_prev_frame_horizontal_mask_1(obj_guy);
	check_collisions_objects_prev_frame_vertical_mask_1(obj_guy);

	if(check_collisions_objects_prev_frame_horizontal_exclusive(obj_guy) || check_collisions_objects_prev_frame_vertical_exclusive(obj_guy) || check_collisions_tiles_fixed_horizontal() || check_collisions_tiles_fixed_vertical())
	{
		ignore_collisions = false;
		with(obj_guy) 
		{
			check_collisions_objects_prev_frame_horizontal();
		//check_collisions_objects_prev_frame_vertical();
	}
}
}



