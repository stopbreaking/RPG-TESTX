function pause_and_fade_to_room(_room, _duration, _color, _sound) {

if(instance_exists(obj_pause_and_fade_to_room)) return;
if(global.level_started) {
	save_room_puzzle_state();
	save_room_state();
}

audio_play_sound(_sound, 10, false);
var _inst = instance_create_depth(0, 0, 0, obj_pause_and_fade_to_room);

with (_inst) 
{
	target_room = _room;
	duration = _duration;
	color = _color;
}
}