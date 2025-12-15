/*
 hokay, so this one needs to trigger the cutscene specifically when the player enters range of a point next to it (mark with cute little star?).
*/
event_inherited();

on_mouse_enter_script = switch_sprite_cutscene_npc;
on_mouse_enter_args = [self, sprite_highlight];

on_mouse_exit_script = switch_sprite_cutscene_npc;
on_mouse_exit_args = [self, sprite_idle];

on_click_script = send_player_to_interact;
on_click_args = [self];

change_animation_on_end = false;
next_sprite = noone;

function me()
{
	return self;
} // use instead of self to keep things less stupid. WORKING

// Trying to fix this stupid cutscene setup to work easier.
function update_conditions(_inst)
{
	with(_inst){
		if(array_length(temp_conditions) == 0) return;
		for(var _i = 0; _i < array_length(temp_conditions); _i++) 
		{
			quest_confirmations = add_and_remake_array(quest_confirmations, temp_conditions[_i]);
		}
	}
}

function send_player_to_interact(_inst)
{
	with (_inst) 
	{
		if(interact_point == noone || interact_point == -1 || interact_point = undefined)
		{
			find_interact_point();
		}
		if!(point_distance(interact_point.x, interact_point.y, obj_guy.x, obj_guy.y) < interact_point.radius) send_player_character(obj_guy.id, interact_point.x, interact_point.y, true);
		interact_point.activate();
	}
}

function on_interact()
{
	start_cutscene(dialogue_array[dialogue_index]);
}

function find_interact_point()
{
	// Setup connection with interact_point
	var _point = noone;
	var _id = link_id;
	var _o = self;
	with(obj_playerchar_interact_point_fixed)
	{
		if(parent_id == _id)
		{
			_point = self;
			parent_obj = _o;
		}
	}
	interact_point = _point;
}

// shake animation?
// Shaking
shaking = false;
shake_mag = 3;
shake_t = 0;

// Variable definitions that don't need to be seen from the editor!!
if(dialogue_index == -1) {
	dialogue_array[0] = [
		[cutscene_enter],
		[switch_sprite, [me, sprite_talking]],
		[cutscene_toggle_portrait_enabled],
		[turn_player_toward_object, [me]],
		[0, cutscene_set_text, ["This is a default textbox. Please override me in creation code :)."]],
		[switch_sprite, [me, sprite_idle]],
		[npc_reset_sprite, [me]],
		[cutscene_exit],
	]
	dialogue_index = 0;
}

if(sprite_index == sprite_highlight) sprite_index = sprite_idle;

interact_point = noone;
find_interact_point();

player_highlight = false;
locked = false;

// Quest stuff
temp_conditions = []