/// @function event_register_script(_event, _id, _script, _arg1)
/// @desc Add a new listener to the event manager
/// @param {string} _event 
/// @param {Id.Instance} _id 
/// @param {function} _script 
/// @param {Array}

function event_register_script(_event, _id, _script, _args = []) {
	with(obj_event_manager)
	{
		var listener_list = undefined;
		
		show_debug_message("Registering event: {0}", _event);
		
		if(!ds_map_exists(event_map, _event))
		{
			listener_list = ds_list_create();
			ds_map_add_list(event_map, _event, listener_list);
		} else {
			listener_list = event_map[? _event];
		}
		
		show_debug_message(listener_list[| 0]);
		
		// Should check if listener already exists, but it's value is packaged in an array, so there's no easy way to check it..
		var _s = ds_list_size(listener_list);
		for(var _i = 0; _i < _s; _i++)
		{
			if(listener_list[| _i][0] == _id) 
			{
				show_debug_message("Warning! Duplicate listeners for same event!");
				event_unregister(_event, _id);
			}
		}
	
	
		var listener_info = ds_list_create();
		
		// Why not just keep the whole array? Is it more cumbersome?
		// Idk, but imma put it in like that. Until I have to un-break it.
		// Ok nevermind I was gonna use listener_info[2] = _args, but it looks more annoying when laid out as a single array.
		// So I'll just un-pack it here and re-pack it in event_fire.
		
		listener_info[0] = _id;
		listener_info[1] = _script;
	
		for(var _i = 0; _i < array_length(_args); _i++)
		{
			listener_info[_i + 2] = _args[_i];
		}
		
		ds_list_add(listener_list, listener_info);
	}
}