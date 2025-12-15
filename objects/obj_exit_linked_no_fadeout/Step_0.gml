if(place_meeting(x,y, obj_guy))
{
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
		
	room_goto(rm);
}