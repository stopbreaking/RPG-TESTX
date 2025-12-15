function set_player_state_sprinting(_instance){
	with (_instance) 
	{
		if(state == player_state_sprinting) return;
		state = player_state_sprinting;
		sprite_index = sprite_sprinting;
		run_speed *= sprint_factor;
	}
}