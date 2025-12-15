function set_player_state_standing(){
	with(obj_guy)
	{
		sprite_index = spr_guy_look_north;
		state = player_state_standing_forward;
	}
}