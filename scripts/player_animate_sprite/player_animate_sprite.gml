function player_animate_sprite(){
	
	if(direction_moving > 90 && direction_moving < 270)
	{
		last_dir = 1;
	} else if (direction_moving < 90 || direction_moving > 270) 
	{
		last_dir = 0;
	}
	
	
	var _total_frames = sprite_get_number(sprite_index) / 2;
	image_index = local_frame + (last_dir * _total_frames);
	local_frame += sprite_get_speed(sprite_index) / FRAME_RATE; // for some reason, only looks at previous direction
	
	if (local_frame >= _total_frames)
	{
		local_frame = 0;
		if(change_animation_on_end)
		{
			sprite_index = next_sprite;
			change_animation_on_end = false;
			_total_frames = sprite_get_number(sprite_index) / 2;
			image_index = local_frame + (last_dir * _total_frames);
			local_frame += sprite_get_speed(sprite_index) / FRAME_RATE; // ????? Is this a bad idea???
		} 
	}
	
	if(directional_effect != noone)
	{
		var _xscale = last_dir*(-2) + 1;
		var _d = depth;
		with directional_effect {
			image_xscale = _xscale;
			y += 2;
			x -= 10*image_xscale;
			depth = _d;
		}
		directional_effect = noone;
	}
}   