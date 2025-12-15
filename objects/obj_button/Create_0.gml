function state_down() 
{
	if(place_meeting(x,y, obj_collisions)) return;
	var _id = identifier;
	with(obj_puzzle_trigger_cutscene) 
	{
		if(identifier == _id) buttons_pressed --;
		show_debug_message("-1 button pressed");
		show_debug_message(buttons_attached);
	}
	sprite_index = spr_button;
	state = state_up;
}

function state_up() 
{
	if(!place_meeting(x,y, obj_collisions)) return;
	if(place_meeting(x,y, obj_guy) && obj_guy.state == player_state_falling) return;
	
	var _id = identifier;
	with(obj_puzzle_trigger_cutscene) 
	{
		if(identifier == _id) buttons_pressed ++;
		show_debug_message("+1 button pressed");
		show_debug_message(buttons_attached);
	}
	sprite_index = spr_button_down;
	state = state_down;
}

function inert()
{
	
}

function force_down() 
{
	state = inert;
	sprite_index = spr_button_down;
}

if(state != inert) state = state_up;
else sprite_index = spr_button_down;