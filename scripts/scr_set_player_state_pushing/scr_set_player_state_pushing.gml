function set_player_state_pushing(_instance)
{	
	with(_instance) {
		if(state == player_state_sprinting)	state = player_state_pushing_fast;
		else state = player_state_pushing;
		objects_being_pushed ++;
		sprite_index = sprite_pushing;
		player_animate_sprite();
		//script_execute(state, self);
	}
}