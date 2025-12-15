if(place_meeting(x,y, obj_guy))
{
	if(specify_location)
	{
		global.room_change.player_tp = true;
		global.room_change.player_tp = specify_location;
		global.room_change.start_x = start_x;
		global.room_change.start_y = start_y;
		global.room_change.camera_tp = true;
		global.room_change.camera_offset_x = 0;
		global.room_change.camera_offset_y = 0;
		global.room_change.player_retains_direction = true;
		global.room_change.saved_direction = obj_guy.direction_moving;
	}
	
	pause_and_fade_to_room(rm, 60, c_black, snd__edited1__ruben_uitenweerde__pistol_holstering);
}