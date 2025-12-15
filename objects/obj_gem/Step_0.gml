if(place_meeting(x, y, obj_guy)) 
{
	if(instance_place(x, y, obj_guy).z_level == z_level)
	{
		global.game_data.level_data.gems_collected ++;
		audio_play_sound(snd_snappy_gem, 0, false, 1, 0, random_range(0.5, 0.6));
		audio_play_sound(snd_194439__high_festiva__gem_ping, 0, false, 0.1, 0, random_range(1.0, 2.0));
		instance_destroy();
	}
}

z = float_height*sin(float_t);
float_t += float_speed;
if(float_t >= 2 * pi) float_t -= 2 * pi;