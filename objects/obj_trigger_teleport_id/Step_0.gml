if(place_meeting(x, y, obj_guy) && obj_guy.state != player_state_falling) 
{
	var _id = identifier;
	with(obj_teleport_waypoint)
	{
		if(identifier == _id) 
		{
			obj_guy.x = x;
			obj_guy.y = y;
		}
	}
	with(obj_guy)
	{
		hspd = 0;
		vspd = 0;
		expected_move_distance = 0;
		targetx = x;
		targety = y;
	}
}