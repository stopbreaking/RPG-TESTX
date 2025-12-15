function hand_state_grabbing(){
	if(anim_end) sprite_index = spr_hand_hold;
	
	// Walk while dragging mouse.
	t ++;
	if(!instance_exists(prev_clickable) || prev_clickable == noone)
	{
		if(t >= update_timer_max)
			{
				t = 0;
				with(player_character) mouse_command = true;
				send_player_character(player_character, mouse_x, mouse_y);
			}
	}
	
	if(clickable != prev_clickable && clickable != noone && instance_exists(prev_clickable)) hand_trigger_enter_exit();
	
	if(!mouse_check_button(1))
	{
		hand_trigger_enter_exit();
		if(clickable == noone) 
		{
			sprite_index = spr_hand_pointer;
			state = hand_state_pointer;
		}
		else 
		{
			sprite_index = spr_hand_highlight;
			state = hand_state_highlight;
		}
	}
}