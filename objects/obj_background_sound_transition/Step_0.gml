progress_a ++;

var _x =  progress_a / fade_duration;
var _channel = animcurve_get_channel(curve, 0);

var _gain = 1 - animcurve_channel_evaluate(_channel, clamp(_x, 0, 1));

if(_gain <= 0)
{
	audio_stop_sound(sound_a);
} else {
	audio_sound_gain(sound_a, _gain, 0);
}

if(fadein != true && _x >= fadein_point) 
{
	fadein = true;
	audio_play_sound(sound_b, 0, true, 0);
} else if(fadein = true) 
{
	progress_b++;
	_x = progress_b / fade_duration;
	_gain = animcurve_channel_evaluate(_channel, clamp(_x, 0, 1));
	audio_sound_gain(sound_b, _gain, 0);
	if(progress_b >= fade_duration) instance_destroy();
}

