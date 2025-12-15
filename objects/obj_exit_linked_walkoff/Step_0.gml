if(place_meeting(x,y, obj_guy) && !triggered && !global.room_change.walkup)
{
	triggered = true;
	global.room_change.player_tp = true;
	global.room_change.use_id = true;
	global.room_change.link_id = link_id;
	global.room_change.camera_tp = true;
	global.room_change.camera_offset_x = 0;
	global.room_change.camera_offset_y = 0;
	global.room_change.player_retains_direction = true;
	global.room_change.saved_direction = obj_guy.direction_moving;
	global.room_change.saved_last_dir = obj_guy.last_dir;
	global.room_change.mouse_command = obj_guy.mouse_command;
	
	if(!disable_walkin){
		global.room_change.walkup = true;
		global.room_change.walkup_h = horiz_distance;
		global.room_change.walkup_v = vert_distance;
	}
	
	fade_to_room(rm, 60, c_black, snd__edited1__ruben_uitenweerde__pistol_holstering);
	start_cutscene([
	[lock_hand_function],
	[lock_player_control],
	[send_player_character_relative, [obj_guy, horiz_distance, vert_distance]],
	]);
}