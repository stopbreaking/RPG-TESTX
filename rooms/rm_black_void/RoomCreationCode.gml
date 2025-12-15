view_enabled = true;
view_visible[0] = true;
view_camera[0] = global.main_camera;

if(!audio_is_playing(snd_trust_84502)) {
	audio_stop_all();
	audio_play_sound(snd_trust_84502, 0, true);
}