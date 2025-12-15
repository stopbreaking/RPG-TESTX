function player_state_afk(_instance){
	if(expected_move_distance > 0) 
		{
			if(mouse_check_button(2) || keyboard_check(vk_shift))
			{
				if(sprint_meter > 0) {
					set_player_state_sprinting(_instance);
					script_execute(state);
				}
			} else 
			{
				set_player_state_running(_instance);
				script_execute(state);
			}
		}
}