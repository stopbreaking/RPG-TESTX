function check_collisions_objects_exclude_tiles() { // tp to where the bounding boxes just slightly touch.
			
		//Find the first wall that DOESN't ignore collisions.
		var _list = ds_list_create();
		var _n = instance_place_list(x + hspeed, y, obj_wall, _list, false);
		
		if(_n > 0) {
		var _horiz_wall = _list[| 0];
		
		var _i = 1;
		while (_horiz_wall.ignore_collisions && _i < _n) 
		{
			_horiz_wall = _list[| _i];
			_i ++;
		} 
		
		if (!_horiz_wall.ignore_collisions) 
		{
			var _new_x = x;
			var _left_box_distance = (x - bbox_left);
			var _right_box_distance = (bbox_right - x);
			if (abs(_horiz_wall.bbox_left - x) < abs(_horiz_wall.bbox_right - x))
			{
				show_debug_message("C");
				_new_x = _horiz_wall.bbox_left + _horiz_wall.hspeed - _right_box_distance;
				if(!(place_meeting_wall(_new_x, y)))
				{
					x = _new_x;
				} else 
				{
					_new_x = _horiz_wall.bbox_right + _horiz_wall.hspeed + _left_box_distance;
					if(!(place_meeting_wall(_new_x, y)))
					{
						x = _new_x;
					}
				}
			} else
			{
				show_debug_message("D");
				_new_x = _horiz_wall.bbox_right + _horiz_wall.hspeed + _left_box_distance;
				if(!(place_meeting_wall(_new_x, y)))
				{
					x = _new_x;
				} else 
				{
					_new_x = _horiz_wall.bbox_left + _horiz_wall.hspeed - _right_box_distance;
					if(!(place_meeting_wall(_new_x, y)))
					{
						x = _new_x;
					}	
				}
			}
			hspeed = 0;
		}
		}
		
		
		// same for vertical.
		ds_list_clear(_list);
		_n = instance_place_list(x, y + vspeed, obj_wall, _list, false);
		
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
			var _new_y = y;
			
			var _top_box_distance = (bbox_top - y);
			var _bottom_box_distance = (y - bbox_bottom);
			if (abs(_vert_wall.bbox_top - y) < abs(_vert_wall.bbox_bottom - y))
			{
				show_debug_message("A");
				_new_y = _vert_wall.bbox_top + _vert_wall.vspeed - _bottom_box_distance;
				if(!(place_meeting_wall(x, _new_y)))
				{
					y = _new_y;
				} else 
				{
					_new_y = _vert_wall.bbox_bottom + _vert_wall.vspeed + _top_box_distance;
					if(!(place_meeting_wall(x, _new_y)))
					{
						y = _new_y;
					}
				}	 
			} else
			{
				show_debug_message("B");
				show_debug_message(_vert_wall.y);
				show_debug_message(_vert_wall.bbox_bottom + _top_box_distance);
				y = _vert_wall.bbox_bottom + _top_box_distance + 50;
			}
			vspeed = 0;
		}
		}
	}
