function screen_shake(_magnitude, _frames){
	with (obj_camera)
	{
		if(_magnitude > shake_remaining)
		{
			shake_magnitude = _magnitude;
			shake_remaining = shake_magnitude;
			shake_length = _frames;
		}
	}
}