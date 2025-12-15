/// @description event_unregister
/// @param {string} _event
/// @param {Id.Instance} _id

function event_unregister(_event, _id) {
	show_debug_message("Event Unregistered!");
	show_debug_message(_id);
	with(obj_event_manager)
	{
		if(ds_map_exists(event_map, _event))
		{
			var _listener_list = event_map[? _event];
			var _length = ds_list_size(_listener_list);
			var _listener_info = undefined;
			
			for (var _i = 0; _i < _length; _i++)
			{
				_listener_info = _listener_list[| _i];
				if(_listener_info[0] == _id) 
				{
					if(_length == 1) {
						ds_list_destroy(_listener_list);
						ds_map_delete(event_map, _event);
					} else ds_list_delete(_listener_list, _i);
					break;
				}
			}
		}
	}
}