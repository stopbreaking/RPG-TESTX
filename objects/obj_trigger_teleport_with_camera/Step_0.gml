if(place_meeting(x, y, obj_guy)) 
{
	var _x_shift = x_shift;
	var _y_shift = y_shift;
	with (obj_guy) 
	{
		x += _x_shift;
		y += _y_shift;
	}
	with (obj_camera)
	{
		x += _x_shift;
		y += _y_shift;
	}
}