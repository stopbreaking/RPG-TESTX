if(!triggered && place_meeting(x,y, obj_guy)) 
{
	var _x = x + 1;
	var _y = y - 9;
	with(obj_guy) 
	{
		x = _x;
		y = _y;
		state = player_state_locked;
		sprite_index = spr_guy_grab_crystal_1x;
		local_frame -= 1;
		player_animate_sprite();
	}
	visible = false;
	triggered = true;
}