function check_collisions_tiles() { // OK i have no idea what I just did.
		// send to outside of tile
		// 1 pixel buffer for down and left because of object origin position?
		if(place_meeting(x + hspeed, y, layer_tilemap_get_id("Collision_Tiles"))) 
		{
			var _left_box_distance = (x - bbox_left);
			var _right_box_distance = (bbox_right - x);
			
			var _new_x = round((x+hspeed)/TILE_SIZE)*TILE_SIZE;
			
			if(_new_x > x) x = _new_x - _right_box_distance;
			else  x = _new_x + _left_box_distance;
			hspeed = 0;
		}
		if(place_meeting(x, y + vspeed, layer_tilemap_get_id("Collision_Tiles"))) {
			var _top_box_distance = (y - bbox_top);
			var _bottom_box_distance = (bbox_bottom - y);
			
			var _new_y = round((y+vspeed)/TILE_SIZE)*TILE_SIZE;
			
			if(_new_y >= round(y)) y = _new_y - _bottom_box_distance;
			else  y = _new_y + _top_box_distance;
			vspeed = 0;
		}
	}
// Does not work if original = part of bounding box, but whatever!!