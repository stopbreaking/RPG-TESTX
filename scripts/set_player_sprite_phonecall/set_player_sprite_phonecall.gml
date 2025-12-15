function set_player_sprite_phonecall(){
	with(obj_guy){
		sprite_index = spr_guy_with_phone;
		hspd = 0;
		vspd = 0;
		locked = true;
		if(state != player_state_locked) 
		{
			last_state = state;
			state = player_state_locked;
		}
	}
}