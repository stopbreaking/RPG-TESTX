function state_down() 
{
	if(place_meeting(x,y, obj_collisions)) return;
	
	event_fire("button up");
	sprite_index = spr_button;
	state = state_up;
}

function state_up() 
{
	if(!place_meeting(x,y, obj_collisions)) return;
	if(place_meeting(x,y, obj_guy) && obj_guy.state == player_state_falling) return;
	
	event_fire("button down");
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

event_register_script("puzzle_complete", self, force_down);