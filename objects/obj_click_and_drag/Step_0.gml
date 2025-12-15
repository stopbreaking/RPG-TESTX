if(frame_released) frame_released = false;

if(snap) {
	x += (snapx - x)/easing;
	y += (snapy - y)/easing;
	
	if(shake_remaining > 0)
	{
		x += random_range(-shake_remaining, shake_remaining);
		y += random_range(-shake_remaining, shake_remaining);
		shake_remaining = max(0, shake_remaining * (1 - shake_magnitude/shake_length));
	}
	
	image_xscale += (1 - image_xscale)/pump_easing;
	image_yscale += (1 - image_yscale)/pump_easing;
	
	if(pump_remaining > 0)
	{
		image_xscale += pump_remaining;
		image_yscale += pump_remaining;
		pump_remaining = max(0, pump_remaining * (1 - pump_magnitude/pump_length));
	}
	
	if(place_meeting(x, y, obj_hand)) 
	{
		var _pushdir = point_direction(mouse_x, mouse_y, x, y);
		// try easing function by using point_distance??
		// var _eased_push_force = point_distance(mouse_x, mouse_y, x, y)/push_easing; // pretty cool runs away from hand but not what I'm looking for :P
		var _eased_push_force = push_force_eased / point_distance(mouse_x, mouse_y, x, y);
		x += lengthdir_x(_eased_push_force, _pushdir);
		y += lengthdir_y(_eased_push_force, _pushdir);
	}
}

if(grabbed) 
{
	if(obj_hand.state != hand_state_grabbing) 
	{
		grabbed = false;
		snap = true;
		frame_released = true;
	}
	else {
		x = mouse_x + grab_offsetx;
		y = mouse_y + grab_offsety;
	}
}