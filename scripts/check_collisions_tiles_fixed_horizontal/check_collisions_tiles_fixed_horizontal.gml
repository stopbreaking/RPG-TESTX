function check_collisions_tiles_fixed_horizontal() { // Difficulty: I don't know which wall was collided with last.
		if(bbox_left < 0 || bbox_right > room_width) return false; // This other stuff doesn't allow you to walk offscreen..
		var _collision = false;
		// Check Left
		var _tile = tilemap_get_at_pixel(layer_tilemap_get_id("Collision_Tiles"), bbox_left, bbox_bottom);
		if(_tile == 0) _tile = tilemap_get_at_pixel(layer_tilemap_get_id("Collision_Tiles"), bbox_left, bbox_top);
		if(_tile != 0) 
		{
			
			var _closest_wall = (tilemap_get_cell_x_at_pixel(layer_tilemap_get_id("Collision_Tiles"), bbox_left, y) + 1) * 64;
			if(bbox_left <= _closest_wall && prev_frame.bbox_left >= _closest_wall)
				x += _closest_wall - bbox_left;
			_collision = true;
		}
		
		// Check Right
		_tile = tilemap_get_at_pixel(layer_tilemap_get_id("Collision_Tiles"), bbox_right, bbox_top);
		if(_tile == 0) _tile = tilemap_get_at_pixel(layer_tilemap_get_id("Collision_Tiles"), bbox_right, bbox_bottom);
		if(_tile != 0) 
		{	
			var _closest_wall = tilemap_get_cell_x_at_pixel(layer_tilemap_get_id("Collision_Tiles"), bbox_right, y) * 64; // ???
			if(bbox_right >= _closest_wall && prev_frame.bbox_right <= _closest_wall)
				x += _closest_wall - bbox_right - 1;
			_collision = true;
		}
		return _collision;
	}