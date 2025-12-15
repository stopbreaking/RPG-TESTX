function check_collisions_tiles_fixed_vertical() { // OK i have no idea what I just did.
	if(bbox_top < 0 || bbox_bottom > room_height) return false; // This other stuff doesn't allow you to walk offscreen..
		var _collision = false;
		// Check Bottom
		var _tile = tilemap_get_at_pixel(layer_tilemap_get_id("Collision_Tiles"), bbox_left, bbox_bottom);
		if(_tile == 0) _tile = tilemap_get_at_pixel(layer_tilemap_get_id("Collision_Tiles"), bbox_right, bbox_bottom);
		if(_tile != 0) {
			var _closest_wall = tilemap_get_cell_y_at_pixel(layer_tilemap_get_id("Collision_Tiles"), x, bbox_bottom) * 64;
			if (bbox_bottom >= _closest_wall && prev_frame.bbox_bottom <= _closest_wall)
				y += _closest_wall - bbox_bottom - 1;
			_collision = true;
		}
		
		// Check Top
		_tile = tilemap_get_at_pixel(layer_tilemap_get_id("Collision_Tiles"), bbox_left, bbox_top);
		if(_tile == 0) _tile = tilemap_get_at_pixel(layer_tilemap_get_id("Collision_Tiles"), bbox_right, bbox_top);
		if(_tile != 0) {
			var _closest_wall = (1 +tilemap_get_cell_y_at_pixel(layer_tilemap_get_id("Collision_Tiles"), x, bbox_top)) * 64;
			if (bbox_top <= _closest_wall && prev_frame.bbox_top >= _closest_wall)
				y += _closest_wall - bbox_top;
			_collision = true;
			}
		return _collision;
		}
	