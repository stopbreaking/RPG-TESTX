function exit_to_room(_room, _inst){
	with(_inst){
		set_room_transition_junk(link_id);
		if(_room == room) // going to the same room doesn't load in properly so I need to try something
		{
			global.room_change.same_room_target = true;
			global.room_change.previous_room = _room;
			_room = global.room_change.temp_room;
		}
		pause_and_fade_to_room(_room, 60, c_black, snd__edited1__ruben_uitenweerde__pistol_holstering);
	}
}