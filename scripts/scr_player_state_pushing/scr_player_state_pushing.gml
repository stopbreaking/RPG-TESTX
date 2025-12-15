function player_state_pushing() {
		//sprite_index = sprite_pushing;
		var _tx = targetx;
		var _ty = targety;
		var _dir = point_direction(x, y, _tx, _ty);
		hspd = lengthdir_x(run_speed, _dir);
		vspd = lengthdir_y(run_speed, _dir);
		direction_moving = _dir;
		expected_move_distance = max(0, expected_move_distance - run_speed);
		if(expected_move_distance == 0)
		{
			hspd = 0;
			vspd = 0;
		}
		
		if(mouse_check_button(2) || keyboard_check(vk_shift)) {
			state = player_state_pushing_fast;
			run_speed *= sprint_factor;	
		}
		x += hspd;
		y += vspd;
		check_collisions_objects_prev_frame_horizontal();
		check_collisions_tiles_fixed_horizontal();
		check_collisions_objects_prev_frame_vertical_exclusive();
		check_collisions_tiles_fixed_vertical();
}