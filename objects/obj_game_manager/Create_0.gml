
game_paused_image_speed = 0;

restart = false;

randomize();

global.game_paused = false;

surface_resize(application_surface, RESOLUTION_W, RESOLUTION_H);

room_goto(ROOM_START);

function load_room()
{
	var _array = struct_get ( global.game_data.room_data, room_get_name(room) );
	if(_array != undefined) {
		instance_destroy(obj_guy);
		instance_destroy(obj_camera);
		for(var i = 0; i < array_length(_array); i ++)
		{
			var _struct = _array[i];
			instance_create_layer(x,y, "Instances", asset_get_index(_struct.object), _struct);
		}
	}
}


function load_room_state()
{
	var _array = struct_get ( global.game_data.room_data_persistent, room_get_name(room));
	if(_array != undefined) {
		instance_destroy(obj_gate, false);
		instance_destroy(obj_lever, false);
		instance_destroy(obj_single_trigger, false); // Is this supposed to be here?
		instance_destroy(obj_handwall, false);
		instance_destroy(obj_gem, false);
		instance_destroy(obj_cracking_dirt);
		instance_destroy(obj_trigger_event_once, false);
		instance_destroy(obj_clickable_trigger_cutscene);
		instance_destroy(obj_playerchar_interact_point_fixed);
		instance_destroy(obj_key);
		instance_destroy(obj_phone, false);
		//Add puzzle triggers
		with(obj_guy) {
			z_level = global.game_data.player_z_level;
		}
		for(var i = 0; i < array_length(_array); i ++)
		{
			var _struct = _array[i];
			show_debug_message(_struct.object); // If this is a cutscene trigger, the creation code needs to be saved.
			with(obj_clickable_trigger_cutscene) // This is awful. So hard to keep track of.
			{ 
				if(object_get_name(object_index) == _struct.object) 
				{
					if(!is_undefined(dialogue_array)) struct_set(_struct, "dialogue_array", dialogue_array);// do I need this one anymore?
					struct_set(_struct, "interact_point", interact_point);
					instance_destroy(self, false);
				}
			}
			instance_create_layer(x,y, "Instances", asset_get_index(_struct.object), _struct);
		}
	}
	update_all_gates(obj_gate);
}

function load_room_puzzle_state() // only really applies to single pot/button puzzle..
{
	var _array = struct_get(global.game_data.room_puzzle_data_persistent, room_get_name(room));
	if(_array != undefined) {
		instance_destroy(obj_pot, false);
		instance_destroy(obj_button, false);
		instance_destroy(obj_button_reset_pots, false);
		instance_destroy(obj_button_destroy_handwall, false);
		instance_destroy(obj_puzzle_trigger_event, false);
		
		show_debug_message(_array); // POP IS TAKING APART THE GLOBAL VARIABLES??? FINISH FIXING THIS FOR EVERYTHING ELSE
		for(var i = 0; i < array_length(_array); i ++)
		{
			var _struct = _array[i];
			show_debug_message(_struct.object);
			instance_create_layer(x,y, "Instances", asset_get_index(_struct.object), _struct);
			show_debug_message(global.game_data.room_puzzle_data_persistent);
		}
		show_debug_message("room puzzle loaded!!");
	} else show_debug_message("UNDEFINED ARRAY");
}

function load_level_completion_status()
{
	if(file_exists("completion.save"))
	{
		show_debug_message("Loading completion settings!");
		var _buffer = buffer_load("completion.save");
		var _json = buffer_read(_buffer, buffer_string);
		buffer_delete(_buffer);
		
		global.level_data = json_parse(_json);	
	}
}

function start_level(level_id) 
{
	global.game_paused = false;
	global.game_data.level_data.name = global.level_data[level_id].name;
	global.game_data.level_data.gems_collected = 0;
	global.game_data.level_data.playtime = -60;
	global.level_started = true;
	global.game_data.player_health = 3;
	audio_sound_pitch(snd_affirmative_chime, 0.1);
	fade_to_room(global.level_data[level_id].starting_room, 120, c_black, snd_affirmative_chime);
}

function reset_level_completion(level_id)
{
	var _reset = 
	{
		name: global.level_data[level_id].name,
		best_time: 0,
		gems_collected: 0,
		total_gems: global.level_data[level_id].total_gems,
		completed: false,
		starting_room: global.level_data[level_id].starting_room,
		preview_image: global.level_data[level_id].preview_image,
	}
	global.level_data[level_id] =_reset;
}

function end_level()
{
	for(var i = 0; i < array_length(global.level_data); i++)
		{
			if(global.level_data[i].name == global.game_data.level_data.name)
				{
					if(global.game_data.level_data.playtime < global.level_data[i].best_time || global.level_data[i].best_time == 0) global.level_data[i].best_time = global.game_data.level_data.playtime;
					if(global.game_data.level_data.gems_collected > global.level_data[i].gems_collected) global.level_data[i].gems_collected = global.game_data.level_data.gems_collected;
					global.game_data.level_started = false;
					fade_to_room(rm_level_select, 120, c_black, snd_affirmative_chime);
					
					// More of this ( THIS WILL BE A FUCKING ANNOYING LATER SO IM MARKING IT NOW)
					ds_map_clear(global.quests); // THIS WILL BE A FUCKING ANNOYING LATER SO IM MARKING IT NOW
					global.game_data.room_data = {};
					global.game_data.room_data_persistent = {};
					global.game_data.room_puzzle_data_persistent = {};
					save_game();
					
					global.level_data[i].completed = true;
					return;
				} 
		}
	show_debug_message("Error: unrecognized level id!!");
	
}

function quit_level()
{
	//global.level_started = false;
	// Erase save file!?
	
	fade_to_room(rm_level_select, 20, c_red, snd__inspectorj__crackingcrunching_a);
}