function jump_for_door(_room, _duration, _color, _sound, _obj) {
	with(obj_guy)
	{
		jumping = true;
		sprite_index = spr_guy_fall_grab;
		//var _s = 20;
		//var _d = point_direction(x, y, )
		fall_speed -= 18;
		hspd += 5;
		if(place_meeting(x,y, _obj)) 
		{
			hspd = sign(hspd) * max(0, abs(hspd) - 0.5);
			vspd = 0;
			fade_to_room(_room, _duration, _color, _sound);
		}
	}
}