function animate_cam_zoom(_target, _is_scale = true, _override_ease = -1) {
	if(_is_scale) _target = _target * RESOLUTION_H;
	with(obj_camera) 
	{
		if(instance_exists(animation) && animation.target == _target) return;
		else if (instance_exists(animation)) instance_destroy(animation);
		animation = animate_value_generic(obj_utility_doublelerp, set_cam_size_uniform, self, obj_camera.cam_height, _target);
		
		var _ease = 1000;
		if(_override_ease != -1) _ease = override_ease;
		with(animation) easing = _ease;
	}
} // I NEED A FUCKING LINEAR ANIM ALREADY