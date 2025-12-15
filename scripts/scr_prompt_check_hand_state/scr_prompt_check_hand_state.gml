function prompt_check_hand_state(_state){
	var _checkerz = false;
	with(obj_hand) _checkerz = (state == _state);
	if(!_checkerz) return;
	audio_play_sound(snd_affirmative_chime, 1, false);
	instance_destroy();
}