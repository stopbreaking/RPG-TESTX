function player_state_falling(){
	fall_speed = min(24, fall_speed + fall_acceleration); // fall_accelleration needs to go the hell down!
	vspd = min(24, fall_speed + fall_acceleration);
	
	x += hspd;
	y += vspd;
	
	
	/*
	if(y == prev_frame.y) 
	{
		set_player_state_flattened();
	}
	*/
}