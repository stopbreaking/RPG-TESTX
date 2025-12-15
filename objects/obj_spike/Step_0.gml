if(place_meeting(x,y, obj_guy))
{
	hurt_player(0, 0, 1);
	if(obj_guy.state == player_state_falling)
	{
		with(obj_guy) last_state = state; // ??
		smack_player_2d(135, 5);
	}
}