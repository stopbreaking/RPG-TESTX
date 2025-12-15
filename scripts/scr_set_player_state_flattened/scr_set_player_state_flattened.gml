function set_player_state_flattened(){
	with(obj_guy) {
		sprite_index = sprite_flattened;
		state = player_state_flattened;
		expected_move_distance = 0;
		//hspd = 0;
		//hspd /= 2;
		vspd = 0;
		fall_acceleration = 0.1;
		fall_speed = 0;
	}
}