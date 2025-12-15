function animate_obj_x(_instanceid, _target, _override_ease = -1) {
	with(_instanceid) 
	{
		var _ease = 1000;
		if(_override_ease != -1) _ease = override_ease;
		
		with(animate_value_generic(obj_utility_doublelerp, set_x, self, x, _target)) easing = _ease;
	}
} // I NEED A FUCKING LINEAR ANIM ALREADY