view_enabled = true;
view_visible[0] = true;
view_camera[0] = global.main_camera;

if(!audio_is_playing(angelic_guitar_pad_25800)) {
	audio_play_sound(angelic_guitar_pad_25800, 0, true);
}
if(!audio_is_playing(gunk_bubbling_in_cave_18880)) {
	audio_play_sound(gunk_bubbling_in_cave_18880, 0, true, 0.5);
}