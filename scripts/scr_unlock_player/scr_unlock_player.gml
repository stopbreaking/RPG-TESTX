function unlock_player(){
	with(obj_guy)
	{
		if(locked) {
			locked = false;
			state = last_state;
		}
	}
}