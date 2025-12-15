function player_state_hop(){
	hop_t = min(hop_t + hop_speed, pi)
	z = sin(hop_t)*hop_height;
	if(hop_t < pi) return;
	state = last_state;
	if (state = player_state_running)
	{
		sprite_index = sprite_running;
	} else
	{
		sprite_index = sprite_idle;
	}
	
	locked = false;
}