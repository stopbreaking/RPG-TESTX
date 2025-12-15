function player_state_idle(_instance){
	hspd = 0;
	vspd = 0;
	
	
	
	
	
	if(!afk) {
		afk_timer --;
		if(afk_timer <= 0)
		{
			afk = true;
			afk_number = round(random(1));
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
}