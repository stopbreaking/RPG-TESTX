if(place_meeting(x,y, obj_guy) && obj_guy.z_level == access_depth && obj_guy.state != player_state_falling)
{
	global.room_change.player_tp = player_tp;
	global.room_change.start_x = target_x;
	global.room_change.start_y = target_y;
	global.room_change.camera_tp = camera_tp;
	global.room_change.camera_offset_x = camera_offset_x;
	global.room_change.camera_offset_y = camera_offset_y;
	global.room_change.player_retains_direction = player_retains_direction;
	global.room_change.saved_direction = obj_guy.direction_moving;
	room_goto(rm);
}