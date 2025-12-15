function npc_stop_talking(_inst){
	with(_inst)
	{
		spr_locked = false;
		image_index = 0;
		image_speed = 1;
		if(obj_hand.clickable == self) sprite_index = sprite_highlight;
		else sprite_index = sprite_idle;
	}
}