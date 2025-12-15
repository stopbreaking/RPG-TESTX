function fade_to_room(_room, _duration, _color, _sound) {

if(instance_exists(obj_fade_to_room) && obj_fade_to_room.state == 0) return;
if(global.level_started) {
	save_room_puzzle_state();
	save_room_state();
}

audio_play_sound(_sound, 10, false);
var _inst = instance_create_depth(0, 0, 0, obj_fade_to_room);

with (_inst) 
{
	target_room = _room;
	duration = _duration;
	color = _color;
}
}