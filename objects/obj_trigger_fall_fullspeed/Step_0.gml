if(place_meeting(x, y, obj_guy)) 
{
	with(obj_guy) 
	{
		if(state != player_state_falling) {
			sprite_index = spr_guy_starts_falling_color_cut;
			local_frame = 5;
			state = player_state_falling;
			fall_speed = 24;
			locked = true;
			falling = true;
			collisions = false;
		}
	}
}