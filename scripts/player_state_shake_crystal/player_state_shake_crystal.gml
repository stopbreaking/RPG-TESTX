function player_state_shaking_loose(){
	shake_mag = max (0, shake_mag - 0.3);
	shake_xyratio = 0.8;
	if(keyboard_check_pressed(vk_space))
	{
		shake_t = 30;
		shake_mag += 3;
		if(shake_mag > 4)
		{
			sprite_index = spr_guy_grab_crystal_3x;
		} else 
		{
			sprite_index = spr_guy_grab_crystal_2x;
		}
		event_fire("shake_loose");
	}
}