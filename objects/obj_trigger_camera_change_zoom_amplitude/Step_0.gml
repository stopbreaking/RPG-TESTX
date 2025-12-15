if place_meeting(x, y, obj_guy) && !triggered
{
	var _easing = easing;
	var _scale = scale;
	with obj_camera 
	{
		if instance_exists(animation) instance_destroy(animation); // TODO: Needs to also check if parameters are the same.
		var _cam_scale = obj_camera.cam_height/RESOLUTION_H;
		animation = animate_value_doublelerp(set_cam_size_uniform, obj_camera, _cam_scale, _scale, _easing);
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