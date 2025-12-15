if(disabled) return;

if(active)
{
	if(point_distance(x, y, obj_guy.x, obj_guy.y) < radius){
		deactivate();
		with(obj_guy) 
		{
			expected_move_distance = 0;
			set_player_state_idle();
		}
		with parent_obj {
			player_highlight = true;
			on_interact();
		}
		with (obj_speech_bubble) visible = false;
	}
} else if (point_distance(x, y, obj_guy.x, obj_guy.y) < player_interact_radius && !obj_guy.locked) 
{
	if parent_obj != noone {
	// PLEASE DONT BREAK PLEASE IM BEGGING YOU
	with(parent_obj)
	{
		if(!player_highlight && !clickable_disabled)
		{
			//script_execute_array(switch_sprite, on_mouse_enter_args);
			with (obj_speech_bubble) visible = true;
		}
		if(!clickable_disabled) player_highlight = true;
	}
	}
} else 
{
	if parent_obj != noone {
	with(parent_obj)
	{
		if(player_highlight)
		{
			//script_execute_array(switch_sprite, on_mouse_exit_args);
			with (obj_speech_bubble) visible = false;
		}
		player_highlight = false;
	}
	}
}

if(active)
{
	image_alpha -= image_alpha / 20;
}

// Can this be destroyed or something?
// How can I ensure that the player doesn't activate this again?