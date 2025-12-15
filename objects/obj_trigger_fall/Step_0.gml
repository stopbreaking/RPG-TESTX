if(place_meeting(x, y, obj_guy)) 
{
	if(obj_guy.state != player_state_falling)
	{
		set_player_state_falling(obj_guy);
	}
	set_hand_state_paused();
}