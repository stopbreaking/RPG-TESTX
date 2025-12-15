if(place_meeting(x, y, obj_guy)) 
{
	var _bot = bbox_bottom;
	with(obj_guy) 
	{
		if(state == player_state_falling) {
			sprite_index = sprite_idle;
			state = player_state_idle;
			locked = false;
			vspeed = 0;
			hspeed = 0;
			y = _bot;
			falling = false;
			fall_speed = 0;
			fall_acceleration = 0.1;
		}
	}
}