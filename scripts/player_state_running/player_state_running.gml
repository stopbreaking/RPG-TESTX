function player_state_running(_instance){
	with(_instance)
	{
		sprite_index = sprite_running;
		if((mouse_check_button(2) || keyboard_check(vk_shift)) && !locked)
		{
			if(sprint_meter > 0) {
				directional_effect = spawn(obj_effect_kickup, x, y);
				set_player_state_sprinting(self); // This is delayed by a frame?
			}
		}
		
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
		
		// Push if stuck on wall.
		if(expected_move_distance > 0 && _dir != 90 && _dir != 270 && prev_frame.x == x) 
		{
			wall_push = true;
			run_to_push_timer --;
			if(run_to_push_timer <= 0)
			{
				sprite_index = sprite_pushing;
			}
		} else if (wall_push) // if the direction is still the same as when pushing, the guy should just switch to idle.
		{
			sprite_index = sprite_idle;
			run_to_push_timer = run_to_push_timer_reset;
			wall_push = false;
		}
		
	}
}