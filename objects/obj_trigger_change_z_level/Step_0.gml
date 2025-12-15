if(place_meeting(x, y, obj_guy)) 
{
	var _z_level = z_level;
	var _triggers_while_falling = triggers_while_falling;
		with (instance_place(x, y, obj_guy)) {
			if(!(state == player_state_falling && !_triggers_while_falling))
				{
				z_level = _z_level;
				//show_debug_message("Trigger activated!");
				//show_debug_message("Player z level changed to {0}", z_level);
				}
		}
} 
/*
else if (place_meeting(x, y, obj_collisions_variable_z_level))
{
	var _z_level = z_level;
		with (instance_place(x, y, obj_collisions_variable_z_level)) z_level = _z_level;
}
*/