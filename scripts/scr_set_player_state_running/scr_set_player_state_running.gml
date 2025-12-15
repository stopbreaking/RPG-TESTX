function set_player_state_running(_instance){
	with (_instance) 
	{
		state = player_state_running;
		sprite_index = sprite_running;
		change_animation_on_end = false;
		//if(!audio_is_playing(snd_better_loud_bwip)) audio_play_sound(snd_better_loud_bwip, 0, true, 0.2, 0, 2);
	}
}