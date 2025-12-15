function set_player_state_idle(){
	with(obj_guy) {
		if(state == player_state_sprinting) run_speed /= sprint_factor;
		sprite_index = sprite_idle;
		state = player_state_idle;
		afk_timer = afk_timer_reset;
		expected_move_distance = 0;
		hspd = 0;
		vspd = 0;
		//if(audio_is_playing(snd_better_loud_bwip)) audio_stop_sound(snd_better_loud_bwip);
	}
}