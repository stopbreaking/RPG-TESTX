function flash_to_room(_room, _hold_duration, _duration, _color, _sound) {

if(instance_exists(obj_flash_to_room)) return;
if(global.level_started) {
	save_room_puzzle_state();
	save_room_state();
}

audio_play_sound(_sound, 10, false);
var _inst = instance_create_depth(0, 0, 0, obj_flash_to_room);

with (_inst) 
{
	target_room = _room;
	hold_duration = _hold_duration;
	duration = _duration;
	color = _color;
}
}