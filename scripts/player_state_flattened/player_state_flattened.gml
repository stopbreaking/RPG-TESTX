function player_state_flattened(_instance){
	with(_instance) {
		hspd = sign(hspd)* max (0, abs(hspd) - landing_friction);
		x += hspd;
		// Idle, but with no afk timer
		flattened_delay --;
		if(flattened_delay > 0) return;
		if(expected_move_distance > 0) 
		{
			flattened_delay = flattened_delay_reset;
			set_player_state_running(_instance);
			script_execute(state);
		}
		
	}
	// Add friction?
}