function save_game(){
	
	// Save the all the important objects
	var _object_data = array_create(0);

	with(obj_guy) 
	{
		var _guy = 
		{
			object: object_get_name(object_index),
			x : x,
			y : y,
			direction_moving: direction_moving,
		}
		array_push(_object_data, _guy);
	}

	with(obj_camera)
	{
		var _camera = 
		{
			object: object_get_name(object_index),
			x : x,
			y : y
		}
		array_push(_object_data, _camera);
	}
	
	global.game_data.last_room = room;

	struct_set(global.game_data.room_data, room_get_name(room), _object_data);
	
	//save_room_state();
	show_debug_message(global.game_data.room_puzzle_data_persistent);
	var _string = json_stringify(global.game_data);
	var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer, "game.save");
	buffer_delete(_buffer);

	show_debug_message("game saved!");
	with(spawn(obj_floaty_text, RESOLUTION_W - 50, RESOLUTION_H - 40)) draw_gui = false; // looks like shit, I think it should place itself just above the player in the screen space. The fade out and contrast may be off as well.
	
}