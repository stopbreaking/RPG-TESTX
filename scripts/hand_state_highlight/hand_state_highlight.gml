function hand_state_highlight(){
	if(clickable == noone) 
	{
		hand_trigger_enter_exit();
		state = hand_state_pointer;
		sprite_index = sprite_pointer;
		script_execute(state);
	}
	else 
	{
		hand_trigger_enter_exit(); // Is this supposed to go here????
		if(mouse_check_button_pressed(1))
		{
			sprite_index = sprite_grabbing;
			image_index = 0;
			anim_end = false;
			t = 0;
			prev_clickable = clickable;
			state = hand_state_grabbing;
			if(clickable.on_click_script != -1)
			{
				script_execute_array(clickable.on_click_script, clickable.on_click_args);
				if(!instance_exists(clickable))
				{
					clickable = noone;
					prev_clickable = noone;
					state = hand_state_pointer;
				}
			} else 
			{
				send_player_character(player_character, mouse_x, mouse_y);
			}
		}
	}
}