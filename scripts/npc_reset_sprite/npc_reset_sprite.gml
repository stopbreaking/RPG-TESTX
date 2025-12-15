function npc_reset_sprite(_inst){
	with(_inst){
		if(player_highlight)
		{
			//sprite_index = sprite_highlight
		} else sprite_index = sprite_idle;
	}
}