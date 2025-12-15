function transition_bg_music_simple(_sound_a, _sound_b, _duration = 5000){
	with(instance_create_layer(0,0,"Instances", obj_background_sound_transition_simple)) 
	{
		sound_start = _sound_a;
		sound_end = _sound_b;
		fade_duration = _duration;
	}
}