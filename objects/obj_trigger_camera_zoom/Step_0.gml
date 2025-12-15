if place_meeting(x, y, obj_guy) && !triggered
{
	var _easing = easing;
	var _new_size = new_size;
	with obj_camera 
	{
		if instance_exists(animation) instance_destroy(animation);
		animation = animate_value_doublelerp(set_cam_size_uniform, obj_camera, obj_camera.cam_height, _new_size, _easing);
	}
	triggered = true;
}

if(triggered && !place_meeting(x, y, obj_guy)) 
{
	timer --;
	if timer <= 0 
	{
		triggered = false;
		timer = timer_length;
	}
}