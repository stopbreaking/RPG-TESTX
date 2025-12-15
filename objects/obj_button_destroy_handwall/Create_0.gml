/*
function state_down() 
{
	return;
}  */

function state_up() 
{
	if(!place_meeting(x,y, obj_collisions)) return;
	if(place_meeting(x,y, obj_guy) && obj_guy.state == player_state_falling) return;
	
	var _id = identifier;
	with(obj_handwall) 
	{
		if(name == _id) instance_destroy();
	}
	audio_play_sound(snd__coral_island_studios__button_9_edited, 0, false);
	sprite_index = spr_button_down;
	state = inert;
}

function inert()
{
	return;
}

function force_down() 
{
	state = inert;
	sprite_index = spr_button_down;
}

if(state != inert) state = state_up;
else sprite_index = spr_button_down;

depth = -y;