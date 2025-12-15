function check_collisions_objects_prev_frame_horizontal_mask_1(_solo_obj = -1) { // tp to where the bounding boxes just slightly touch. // only works if speed calculations are done in the step function!!
		
		
		var _last_wall = noone;
		
		var _list = ds_list_create();
		
		var _n = instance_place_list(x, y, obj_collisions, _list, true);
		
		if(_n > 0) {
		
		
		var _collisions = ds_list_create();
		
		for(var _j = 0;  _j < _n; _j++)
		{
			var _horiz_obstacle = _list[| _j];
			if(!_horiz_obstacle.ignore_collisions && _horiz_obstacle.z_level == z_level && _horiz_obstacle.object_index == _solo_obj) 
			{
			
			// Collision is on the right
			if( round(bbox_right) >= round(_horiz_obstacle.bbox_left) && round(prev_frame.bbox_right) <= round(_horiz_obstacle.prev_frame.bbox_left))
				x += _horiz_obstacle.bbox_left - bbox_right - 1;
			// Collision is on the left
			if( round(bbox_left) <= round(_horiz_obstacle.bbox_right) && round(prev_frame.bbox_left) >= round(_horiz_obstacle.prev_frame.bbox_right))
				x += _horiz_obstacle.bbox_right - bbox_left;
			return true;
			}
		}
		// Cleanup
		ds_list_destroy(_list);
		}
	}
