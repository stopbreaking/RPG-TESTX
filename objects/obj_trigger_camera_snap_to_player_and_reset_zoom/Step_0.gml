if(place_meeting(x, y, obj_guy) && !triggered) 
{	
	camera_snap_to_player();
	var _easing = easing;
	with obj_camera 
	{
		if (instance_exists(animation)) instance_destroy(animation); // TODO: Needs to also check if parameters are the same.
		animation = animate_value_doublelerp(set_cam_size_uniform, obj_camera, obj_camera.cam_height/RESOLUTION_H, 1, _easing);		
	}
	triggered = true;
}

if(!place_meeting(x, y, obj_guy)) 
{	
	triggered = false;
}
