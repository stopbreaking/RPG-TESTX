function set_hand_state_unpaused(){
	with(obj_hand) 
	{
		state = hand_state_pointer;
		sprite_index = spr_hand_pointer;
		clickable = noone;
	}
}