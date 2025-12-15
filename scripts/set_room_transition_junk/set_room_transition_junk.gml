function set_room_transition_junk(_link_id){
	global.room_change.player_tp = true;
	global.room_change.use_id = true;
	global.room_change.link_id = _link_id;
	global.room_change.camera_tp = true;
	global.room_change.camera_offset_x = 0;
	global.room_change.camera_offset_y = 0;
	global.room_change.player_retains_direction = true;
	global.room_change.saved_direction = obj_guy.direction_moving;
	global.room_change.saved_last_dir = obj_guy.last_dir;
	global.room_change.mouse_command = obj_guy.mouse_command;
}