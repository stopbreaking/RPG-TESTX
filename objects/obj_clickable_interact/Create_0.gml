/*
Mostly a copy of obj_clickable_trigger_cutscene...
Idk how to fix the inheritance without a giant headache.
I'll just make it both a interactible and interact point. That'll be easier..
*/
event_inherited();

on_click_script = send_player_to_interact;
on_click_args = [self];

function me()
{
	return self;
} // use instead of self to keep things less stupid. WORKING

function send_player_to_interact(_inst)
{
	with (_inst) 
	{
		if!(point_distance(x, y, obj_guy.x, obj_guy.y) < interact_radius) 
		{ 
			send_player_character(obj_guy.id, x, y, true);
			primed = true;
		} else 
		{
			on_interact();
		}
	}
}

function on_interact()
{
	start_cutscene(dialogue_array[dialogue_index]);
}

function deactivate()
{
	primed = false;
}

// Variable definitions that don't need to be seen from the editor!!
dialogue_array = [];
dialogue_array[0] = [
	[cutscene_enter],
	[cutscene_exit],
]
dialogue_index = 0;

interact_radius = 32; // 1 block large

event_register_script("terrain_click", self, deactivate);
event_register_script("move_key_down", self, deactivate);

player_highlight = false;
primed = false;