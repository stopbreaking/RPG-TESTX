closed_sprite = sprite_index;
prev_frame = 
{
	x: x,
	y: y,
	bbox_left: bbox_left,
	bbox_right: bbox_right,
	bbox_top: bbox_top,
	bbox_bottom: bbox_bottom,
}

function on_flip() {
	closed = !closed;
	gate_update();
}

function gate_update()
{
	if(closed) {
			sprite_index = closed_sprite;
			ignore_collisions = false;
			
			// Send overlapping objects to outer edge IF there is no collision tile in the way.
			var _overlapping = ds_list_create();
			var _n = instance_place_list(x, y, obj_collisions, _overlapping, false); 
			
			for(var _i = 0; _i < _n; _i++)
			{
				if(!_overlapping[| _i].ignore_collisions) 
				{		
					var _x = x;
					var _y = y;
					var _bbox_top = bbox_top;
					var _bbox_bottom = bbox_bottom;
					var _bbox_left = bbox_left;
					var _bbox_right = bbox_right;
					with(_overlapping[| _i])
					{
						// Just check each direction.
						
						var _moved = false;
						
						if(x > _x) 
						{
							var _new_x = x + _bbox_right - bbox_left;
							if(!place_meeting(_new_x,y, layer_tilemap_get_id("Collision_Tiles")) && !place_meeting(_new_x,y, obj_gate))
							{
								x = _new_x;
								_moved = true;
							}
							else 
							{
								_new_x = x + _bbox_left - bbox_right;
								if(!place_meeting(_new_x,y, layer_tilemap_get_id("Collision_Tiles")) && !place_meeting(_new_x,y, obj_gate))
								{
									x = _new_x;
									_moved = true;
								} 
							}
						} else 
						{
							var _new_x = x + _bbox_left - bbox_right;
							if(!place_meeting(_new_x,y, layer_tilemap_get_id("Collision_Tiles")) && !place_meeting(_new_x,y, obj_gate))
							{
								x = _new_x;
								_moved = true;
							}
							else 
							{
								_new_x = x + _bbox_right - bbox_left;
								if(!place_meeting(_new_x,y, layer_tilemap_get_id("Collision_Tiles")) && !place_meeting(_new_x,y, obj_gate))
								{
									x = _new_x;
									_moved = true;
								} 
							}
						}
						
						if(!_moved)
							{
								if(y < _y) 
								{
									var _new_y = y + _bbox_top - bbox_bottom;
									if(!place_meeting(x, _new_y, layer_tilemap_get_id("Collision_Tiles")) && !place_meeting(x, _new_y, obj_gate))
									{
										y = _new_y;
									} else 
									{
										_new_y = y + _bbox_bottom - bbox_top;
										if(!place_meeting(x,_new_y, layer_tilemap_get_id("Collision_Tiles")) && !place_meeting(x, _new_y, obj_gate))
										{
											y = _new_y;
										}
									}
								} else 
								{
									var _new_y = y + _bbox_bottom - bbox_top; 
									if(!place_meeting(x, _new_y, layer_tilemap_get_id("Collision_Tiles")) && !place_meeting(x, _new_y, obj_gate))
									{
										y = _new_y;
									} else 
									{
										
										_new_y = y + _bbox_top - bbox_bottom;
										if(!place_meeting(x,_new_y, layer_tilemap_get_id("Collision_Tiles")) && !place_meeting(x, _new_y, obj_gate))
										{
											y = _new_y;
										}
									}
								}
							}
						}
					}
				}
			}
		else {
			sprite_index = open_sprite;
			ignore_collisions = true;
		}
}

event_register_script(lever_event, self, on_flip);