if(place_meeting(x, y, obj_guy)) 
{
	var _top = bbox_top;
	with(obj_guy) 
	{
		if(state == player_state_falling) {
			locked = false;
			collisions = true;
			y = _top;
			set_player_state_flattened();
			set_hand_state_unpaused();
		}
	}
}