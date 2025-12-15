function set_player_state_afk(){
	with(obj_guy)
	{
		state = player_state_afk;
		afk_number = choose(0, 1);
		if afk_number == 0 
		{
			sprite_index = spr_guy_idle_adjust_hat
			next_sprite = spr_guy_idle_hold_hat;
		}	
		else 
		{
			sprite_index = spr_guy_idle_sitdown
			next_sprite = spr_guy_idle_seated;
		}
		local_frame = 0;
		change_animation_on_end = true;
	}
}