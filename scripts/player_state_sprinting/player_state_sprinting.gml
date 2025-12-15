function player_state_sprinting(_instance){
	with(_instance) // Same logic as with running??
	{
		sprite_index = sprite_sprinting;
		var _tx = targetx;
		var _ty = targety;
		
		//FIGURE OUT WHERE TO PUT X-LOCK
		
		var _dir = point_direction(x, y, _tx, _ty);
		hspd = lengthdir_x(run_speed, _dir);
		vspd = lengthdir_y(run_speed, _dir);
		
		// Movement
		x += hspd;
		if(collisions) 
			{
			check_collisions_objects_prev_frame_horizontal();
			check_collisions_tiles_fixed_horizontal();	
			}
		y += vspd;
		if(collisions) 
			{
			check_collisions_objects_prev_frame_vertical_exclusive();
			check_collisions_tiles_fixed_vertical();
			}
		// State change
		direction_moving = _dir;
		expected_move_distance = max(0, expected_move_distance - run_speed);
		
		if(expected_move_distance == 0)
		{
			set_player_state_idle();
		} else if (point_distance(x, y, targetx, targety) < run_speed) 
		{
			x = targetx;
			y = targety;
			set_player_state_idle();
		}
		else if!(mouse_check_button(2) || keyboard_check(vk_shift)) {
			run_speed /= sprint_factor;
			set_player_state_running(self);
		}
	}
}