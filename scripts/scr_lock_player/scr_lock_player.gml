function lock_player(){
	with(obj_guy)
	{
		hspd = 0;
		sprite_index = sprite_idle;
		locked = true;
		last_state = state;
		state = player_state_locked;
	}
}