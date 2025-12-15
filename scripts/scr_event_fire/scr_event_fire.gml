/// @description event_fire
/// @param {string} _event

function event_fire(_event){
	//show_debug_message("Firing event: {0}", _event);
	
	with(obj_event_manager)
	{
		if(ds_map_exists(event_map, _event))
		{
			var _listener_list = event_map[? _event];
			var _length = ds_list_size(_listener_list);
			
			var _listener_info = undefined, 
				_listener = undefined, 
				_script = undefined, 
				_args = undefined;
			
			for(var _i = 0; _i < _length; _i++)
			{
				_listener_info = _listener_list[| _i];
				_listener = _listener_info[0];
				_script = _listener_info[1];
				
				// Re-pack the array.
				var _arg_count = array_length(_listener_info) - 2;
				_args = array_create(_arg_count, 0);
				array_copy(_args, 0, _listener_info, 2, _arg_count)
				
				var _unregister = false;
				if(instance_exists(_listener))
					with(_listener) _unregister = script_execute_array(_script, _args);
				else 
				{
					//OKAY SO, IN THE FIRST FRAME OF THE ROOM, NEWLY CREATED INSTANCES WON'T REGISTER AS EXISTING!!
					//SO I CAN'T LOAD IN OBJECTS AND VERIFY THEIR EXISTENCE IN THE SAME FRAME MEANING I CAN'T USE THE CREATE EVENT IF I WANT TO ACCESS INFO RELIABLY.
					// I set this so that it unregisters at the end of the room anyway..
					//_unregister = true;
					//show_debug_message("Missing instance in event listeners!");
					//show_debug_message("Unregistering!");
				}
				
				if(_unregister)
				{
					event_unregister(_event, _listener);
					_i --;
					_length --;
				}
			}
		}
	}
}