function flip_playerchar(_inst){
	with(obj_guy){
		if(last_dir == 1) last_dir = 0;
		else last_dir = 1;
		
		if(last_dir == 1) 
		{
			direction_moving = 180;
		} else direction_moving = 0;
	}
}