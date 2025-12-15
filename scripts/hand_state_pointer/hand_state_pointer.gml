function hand_state_pointer() {
	if(anim_end) {
		sprite_index = sprite_pointer;
		anim_end = false;
	}
	if(clickable != noone) 
	{
		hand_trigger_enter_exit();
		state = hand_state_highlight;
		sprite_index = sprite_highlight;
		script_execute(state);
	} else if(mouse_check_button_pressed(1))
	{
		event_fire("terrain_click");
		sprite_index = sprite_grabbing;
		image_index = 0;
		anim_end = false;
		t = 0;
		prev_clickable = clickable;
		state = hand_state_grabbing;
		with(player_character) mouse_command = true;
		send_player_character(player_character, mouse_x, mouse_y);
	}
}