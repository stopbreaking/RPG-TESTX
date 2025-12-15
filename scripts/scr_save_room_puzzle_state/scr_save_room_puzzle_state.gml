function save_room_puzzle_state(){ // Only save after a puzzle's been completed?? // puzzle data can only work for one type or set at a time
	var _object_data = array_create(0);
	with(obj_pot) // Cross that bridge later i guess..
	{
		var _pot = 
		{
			object: object_get_name(object_index),
			x : x,
			y : y
		}
		array_push(_object_data, _pot);
	}
	with(obj_button) {
		var _button = 
		{
			object: object_get_name(object_index),
			x : x,
			y : y,
			state : state
		}
		array_push(_object_data, _button);
	}
	with(obj_button_destroy_handwall)
	{
		var _button = 
		{
			object: object_get_name(object_index),
			x : x,
			y : y,
			state: state
		}
		array_push(_object_data, _button);
	}
	with(obj_button_reset_pots)
	{
		var _button = 
		{
			object: object_get_name(object_index),
			x : x,
			y : y,
			pot_array: pot_array,
			puzzle_completed: puzzle_completed,
			state : state,
			snapshot : snapshot,
		}
		array_push(_object_data, _button);
	}
	with(obj_puzzle_trigger_cutscene)
	{
		var _puzzle_obj = 
		{
			object: object_get_name(object_index),
			buttons_attached: buttons_attached,
			buttons_pressed: buttons_pressed
		}
		array_push(_object_data, _puzzle_obj);
	}
	with(obj_puzzle_trigger_event)
	{
		var _puzzle_obj = 
		{
			object: object_get_name(object_index),
			event_id: event_id,
			buttons_attached: buttons_attached
		}
		array_push(_object_data, _puzzle_obj);
	}
	show_debug_message("room puzzle saved.");
	struct_set(global.game_data.room_puzzle_data_persistent, room_get_name(room), _object_data);
}