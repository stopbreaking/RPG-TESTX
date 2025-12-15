function quick_replace(_obj_id, _replace_id) {
	var _x = 0;
	var _y = 0;
	with(_obj_id)
	{
		_x = x;
		_y = y;
		instance_destroy();
	}
	spawn(_replace_id, _x, _y);
}