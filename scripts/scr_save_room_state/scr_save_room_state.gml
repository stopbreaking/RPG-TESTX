function save_room_state(){
	// Save all the flipped switches and anything else that gets put in here.
	var _object_data = array_create(0);

	with(obj_gate) 
	{
		var _gate = 
		{
			object: object_get_name(object_index),
			closed: closed,
			x: x,
			y: y,
			image_xscale: image_xscale,
			image_yscale: image_yscale
		}
		array_push(_object_data, _gate);
	}
	with(obj_lever) 
	{
		var _lever = 
		{
			object: object_get_name(object_index),
			flipped: flipped,
			single_use: single_use,
			link_id: link_id,
			x: x,
			y: y,
		}
		if(on_click_script != on_click_flip_lever)
		{
			_lever.on_click_script = on_click_script;
			_lever.on_click_args = on_click_args;		
		}
		array_push(_object_data, _lever);
	}
	with(obj_button_count_trigger_cutscene)
	{
		var _trigger = 
		{
			object: object_get_name(object_index),
			x : x,
			y : y,
			count : count,
			cutscene_no : cutscene_no, 
		}
		array_push(_object_data, _trigger);
	}
	with(obj_puzzle_trigger_cutscene)
	{
		var _trigger = 
		{
			object: object_get_name(object_index),
			x : x,
			y : y,
			buttons_attached : buttons_attached,
			cutscene_no : cutscene_no, 
		}
		array_push(_object_data, _trigger);
	}
	with(obj_trigger_event_once)
	{
		var _trigger = 
		{
			object: object_get_name(object_index),
			x : x,
			y : y,
			ev: ev,
		}
		array_push(_object_data, _trigger);
	}
	with(obj_handwall)
	{
		var _handwall = 
		{
			object: object_get_name(object_index),
			x : x,
			y : y,
			name : name,
		}
		array_push(_object_data, _handwall);
	}
	with(obj_gem)
	{
		var _gem = 
		{
			object: object_get_name(object_index),
			x : x,
			y : y,
			z_level : z_level,
		}
		array_push(_object_data, _gem);
	}
	with(obj_cracking_dirt)
	{
		var _cracking_dirt = 
		{
			object: object_get_name(object_index),
			x : x,
			y : y,
			cracks: cracks,
			z_level: z_level,
			image_index: image_index,
		}
		array_push(_object_data, _cracking_dirt);
	}
	with(obj_clickable_yapper1)
	{
		var _npc =
		{
			object: object_get_name(object_index),
			x : x,
			y : y,
			dialog_line : dialog_line,
		}
		array_push(_object_data, _npc);
	}	
	with (obj_key)
	{
		var _key =
		{
			object: object_get_name(object_index),
			y_origin : y_origin,
			x : x,
			y : y
		}
		array_push(_object_data, _key);
	}
	/*
	with(obj_door_template) // Save the array index and whether or not object has been destroyed
	{
		var _npc =
		{
			object: object_get_name(object_index),
			x : x,
			y : y,
			image_xscale : image_xscale,
			image_yscale : image_yscale,
			sprite_index : sprite_index,
			sprite_idle : sprite_idle,
			sprite_highlight : sprite_highlight,
			sprite_talking : sprite_talking,
			clickable_disabled : clickable_disabled,
			quest_confirmations : quest_confirmations,
			dialogue_index : dialogue_index,
			dialogue_array : dialogue_array,
			link_id : link_id,
			rm_next : rm_next,
		}
		array_push(_object_data, _npc);
	} */
	with(obj_clickable_trigger_cutscene) // Save the array index and whether or not object has been destroyed
	{
		//if(!data_contains(_object_data, object_get_name(object_index))) {}
		var _npc =
		{
			object: object_get_name(object_index),
			x : x,
			y : y,
			depth : depth,
			visible: visible,
			image_xscale : image_xscale,
			image_yscale : image_yscale,
			sprite_index : sprite_index,
			sprite_idle : sprite_idle,
			sprite_highlight : sprite_highlight,
			sprite_talking : sprite_talking,
			clickable_disabled : clickable_disabled,
			quest_confirmations : quest_confirmations,
			dialogue_index : dialogue_index,
			dialogue_array : dialogue_array,
			link_id : link_id,
		}
		array_push(_object_data, _npc);
		
	}	
	
	with(obj_phone)
	{
		var _phone =
		{
			object : object_get_name(object_index),
			y_origin : y_origin,
			x : x,
			y : y
		}
		array_push(_object_data, _phone);
	}
		
	with(obj_playerchar_interact_point_fixed)
	{
		var _point =
		{
			object: object_get_name(object_index),
			x : x,
			y : y,
			parent_id : parent_id
		}
		array_push(_object_data, _point);
	}
	
	show_debug_message("room state saved.");
	struct_set(global.game_data.room_data_persistent, room_get_name(room), _object_data);
}