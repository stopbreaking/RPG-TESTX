function set_player_state_falling(_instance){
	with (_instance) 
	{
		if(state == player_state_sprinting) {
			run_speed /= sprint_factor;
			//hspd /= sprint_factor;
		}
		state = player_state_falling;
		sprite_index = spr_guy_starts_falling_color_cut;
		expected_move_distance = 0;
		locked = true;
		local_frame = 0;
	}
}