function player_state_idle(_instance){
	with(_instance) {
		//sprite_index = sprite_idle;
		hspd = 0;
		vspd = 0;
	
		if(expected_move_distance > 0) 
		{
			if((mouse_check_button(2) || keyboard_check(vk_shift)) && !locked)
			{
				directional_effect = spawn(obj_effect_kickup, x, y);
				set_player_state_sprinting(_instance);
				script_execute(state, self);
				
			} else 
			{
				//directional_effect = spawn(obj_effect_kickup, x, y);
				set_player_state_running(_instance);
				script_execute(state, self);
			}
			
			
		}
	
	if!(locked){
		// Transition to afk	
		afk_timer --;
		if(afk_timer <= 0) set_player_state_afk();
	}
	}
}