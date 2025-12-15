function prompt_click_things(_total){
	if(global.clickme_triggers >= _total) {
		global.clickme_triggers = 0;
		audio_play_sound(snd_affirmative_chime, 1, false);
		blink = true;
		text = "Nice!!"
		c3 = c_green;
		c4 = c_green;
		fulfilled = true;
	}
}