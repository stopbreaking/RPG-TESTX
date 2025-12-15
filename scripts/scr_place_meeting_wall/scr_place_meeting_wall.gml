function place_meeting_wall(_x, _y) {
	var _wlist = ds_list_create();
	var _m = instance_place_list(_x, _y, obj_wall, _wlist, true);
	
	if(_m > 0) 
	{
		var _wall = _wlist[| 0];
		var _k = 1;
		while(_wall.ignore_collisions && _k < _m) 
		{
			_wall = _wlist[| _k];
			_k++;
		}
		if(!_wall.ignore_collisions) return true;
	}
	return false;
}