function check_collisions_objects_prev_frame_vertical_exclusive(_ignoreobj = -1) { // tp to where the bounding boxes just slightly touch. // only works if speed calculations are done in the step function!!
		
		var _last_wall = noone;
		
		var _list = ds_list_create();
		
		var _n = instance_place_list(x, y, obj_collisions, _list, true);
		
		if(_n > 0) {
		
		for(var _j = 0;  _j < _n; _j++)
		{
		var _obstacle = _list[| _j];
		if(!_obstacle.ignore_collisions && _obstacle.z_level == z_level && _obstacle.object_index != _ignoreobj) // WARNING: DOES NOT CHECK CHANGE IN Z LEVEL WHILE OVERLAPPING 
		{
			// Collision is on the top
			if(round(bbox_bottom) >= round(_obstacle.bbox_top) && round(prev_frame.bbox_bottom) <= round(_obstacle.prev_frame.bbox_top))
				y += _obstacle.bbox_top - bbox_bottom;
			// Collision is on the bottom
			if(round(bbox_top) <= round(_obstacle.bbox_bottom) && round(prev_frame.bbox_top) >= round(_obstacle.prev_frame.bbox_bottom))
				y += _obstacle.bbox_bottom - bbox_top;
		
			return true;
		}
		}
	}
}
