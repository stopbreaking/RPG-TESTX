function turn_player_toward_object(_inst){
	var _x = _inst.x;
	with(obj_guy)
	{
		last_dir = sign(_x - x);
		if(sign(_x - x) < 0) direction_moving = 180;
		else direction_moving = 0;
	}
}