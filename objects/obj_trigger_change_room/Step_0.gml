if(place_meeting(x, y, obj_guy)) 
{
	var _rm = rm;
	var _s = sound;
	with(obj_guy) 
	{
		vspeed = 0;
		hspeed = 0;
		fade_to_room(_rm, 10, c_white, _s);
	}
}