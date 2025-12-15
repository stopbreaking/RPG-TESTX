function player_hop(){
	with(obj_guy) 
	{
		if(state == player_state_hop) return;
		hop_t = 0;
		sprite_index = spr_guy_hopping; 
		last_state = state;
		state = player_state_hop;
		locked = true;
	}
}