function exit_player_state_pushing(_instance)
{	
	with(_instance) {
		objects_being_pushed --;
		if(objects_being_pushed <= 0) 
		{
			if(state == player_state_pushing_fast)
			{
				run_speed /= sprint_factor;
				set_player_state_sprinting(_instance);
				local_frame = 0;
				player_animate_sprite();
			}
			else if(state == player_state_pushing) 
			{
				set_player_state_running(_instance);
				local_frame = 0;
				player_animate_sprite();
			}
		}
	}
}