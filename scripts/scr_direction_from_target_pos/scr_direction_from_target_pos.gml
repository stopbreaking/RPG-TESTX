function direction_from_target_pos(){
	var _cardinal_direction = abs(round(direction_moving/90));
	
	if(mouse_command)
	{
		last_dir = abs(round(direction_moving/180));
	} else {
	switch(_cardinal_direction)
	{
		case 4: last_dir = 0; break;
		case 2: last_dir = 1; break;
		case 0: last_dir = 0; break;
		default: break;
	}
	}
	return _cardinal_direction;
}