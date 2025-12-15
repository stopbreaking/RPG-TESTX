if(override_destroy) return;

var _id = identifier;

with(obj_button)
{
	if(_id == identifier) 
	{
		state = inert;
		sprite_index = spr_button_down;
	}
}

with(obj_button_reset_pots)
{
	if (_id == identifier) puzzle_completed = true;
}