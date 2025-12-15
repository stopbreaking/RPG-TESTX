// I need to save the pots at the beginning and only save over after they've been destroyed.

if(!snapshot) {
	save_pots();
	snapshot = true;
	}

function state_down() 
{
	if(place_meeting(x,y, obj_collisions)) return;
	sprite_index = spr_button_reset;
	state = state_up;
}

function state_up() 
{
	if(!place_meeting(x,y, obj_collisions)) return;
	if(place_meeting(x,y, obj_guy) && obj_guy.state == player_state_falling) return;
	// Destroy all pots and return to original position in room.
	/*
	with(obj_pot)
	{ 
		on_destroy_reset_position = true;
		instance_destroy();
	}*/
	load_pots();
	sprite_index = spr_button_down;
	state = state_down;
}

state = state_up;

// Get all pots at level start
function save_pots() {
var _pot_objects = array_create(0);

with(obj_pot) 
	{
		var _pot =
			{
				object: object_get_name(object_index),
				x : x,
				y : y,
			}
		array_push(_pot_objects, _pot);
	}
	pot_array = _pot_objects;
}

function load_pots() 
{
	if(puzzle_completed) return;
	with(obj_pot) instance_destroy(self, true);
	var _array = pot_array;
	if(_array != undefined) {
		for(var i = 0; i < array_length(_array); i ++)
		{
			var _struct = _array[i];
			instance_create_layer(x,y, "Instances", asset_get_index(_struct.object), _struct);
		}
	}
}

function set_puzzle_complete()
{
	puzzle_completed = true;
}

event_register_script("puzzle_completed", self, set_puzzle_complete);