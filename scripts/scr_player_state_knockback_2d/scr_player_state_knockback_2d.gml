function player_state_knockback_2d(_inst) {
	with(_inst){
		fall_acceleration = 0.5;
		fall_speed = fall_speed + fall_acceleration;
		vspd = fall_speed + lengthdir_y(smack, smackdir);
		hspd = lengthdir_x(smack, smackdir);
		if(fall_speed > smack) 
		{
			set_player_state_falling(_inst);
			//fall_speed -= smack;
		}
		y += vspd;
		x += hspd;
		}
}