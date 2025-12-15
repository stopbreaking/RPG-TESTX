function check_collisions_objects() { // tp to where the bounding boxes just slightly touch.
		
		var _last_wall = noone;
		
		var _list = ds_list_create();
		
		var _n = instance_place_list(x + hspeed, y, obj_wall, _list, true);
		
		if(_n > 0) {
		
		var _horiz_wall = _list[| 0];
		
		var _i = 1;
		while (_horiz_wall.ignore_collisions && _i < _n) //Find the first wall that DOESN't ignore collisions. 
		{
			_horiz_wall = _list[| _i];
			_i ++;
		}
		if(!_horiz_wall.ignore_collisions) 
		{
			hspeed = 0;
		}
		}
		_n = 0;
		if(_n > 0) {
		var _vert_wall = _list[| 0];
		
		var _i = 1;
		while (_vert_wall.ignore_collisions && _i < _n) 
		{
			_vert_wall = _list[| _i];
			_i ++;
		}
		
		if(!_vert_wall.ignore_collisions) 
		{
			vspeed = 0;
		}
		}
		return _last_wall;
	}
