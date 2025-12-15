function clickme_counter(_instance){
	with(_instance){
		audio_sound_pitch(snd_synth_bloop, 1 + 1*global.clickme_triggers);
		audio_play_sound(snd_synth_bloop, 1, false);
		global.clickme_triggers ++;
		instance_destroy();
	}
}