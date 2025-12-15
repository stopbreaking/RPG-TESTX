if(!trigger)
{
	audio_play_sound(sound_end, 1, true);
	audio_sound_gain(sound_end, 1, fade_duration);
	audio_sound_gain(sound_start, 0, fade_duration);
	fade_duration = floor((fade_duration*FRAME_RATE)/1000);
	trigger = true;
} else {

fade_duration --;

if(fade_duration <= 0) 
{
	audio_stop_sound(sound_start);
	instance_destroy();
}
}