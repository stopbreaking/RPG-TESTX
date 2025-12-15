t += t_speed;
if(t > 2*pi) t -= 2*pi;

y = y_origin + magnitude*sin(t);

if(place_meeting(x,y, obj_guy))
{
	instance_destroy();
	/*
	audio_play_sound(snd_affirmative_chime, 1, false);
	pause_game();
	var _id = layer_sequence_create("Instances", obj_camera.x, obj_camera.y, Sequence1);
	with(spawn(obj_sequence_tracker)) sequence_id = _id;
	//level_complete(level_id);
	*/
	audio_sound_pitch(snd_victory_blip, 2);
	audio_play_sound(snd_victory_blip, 1, false);
	spawn(obj_sequence_level_complete);
	with (obj_exit_linked) {
		triggered = true;
	}
	with(obj_playerchar_interact_point_fixed) {
		disabled = true;
	}
	/*with(obj_guy)
	{
		sprite_index = spr_guy_with_hat_uppy_1;
		state = player_state_paused;
	}*/
	//obj_game_manager.end_level();
}