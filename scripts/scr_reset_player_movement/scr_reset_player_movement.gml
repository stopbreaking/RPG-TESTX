function reset_player_movement(){
	with(obj_guy) 
	{
		hspd = 0;
		vspd = 0;
		targetx = x;
		targety = y;
		expected_move_distance = 0;
	}
	set_player_state_idle();
}