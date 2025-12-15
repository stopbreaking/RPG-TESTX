function animate_value_generic(_object, _set_function, _sender, _value, _target)
{
	var _instance = spawn(_object);
	with(_instance) 
	{
		to_set = _set_function;
		sender = _sender;
		value = _value;
		target = _target;
	}
	script_execute(_set_function, _sender, _value);
	return _instance;
}

function animate_value_continuous(_object, _set_function, _sender, _value_function, _value_args, _target_function, _target_args)
{
	var _instance = spawn(_object);
	with(_instance) 
	{
		to_set = _set_function;
		sender = _sender;
		value_function = _value_function;
		value_args = _value_args;
		target_function = _target_function;
		target_args = _target_args;
	}
	script_execute(_set_function, _sender, script_execute_array(_value_function, _value_args));
	return _instance;
}

function animate_value_doublelerp(_set_function, _sender, _value, _target, _easing)
{
	var _instance = animate_value_generic(obj_utility_doublelerp, _set_function, _sender, _value, _target);
	with(_instance)
	{
		easing = _easing;
	}
	return _instance;
}

function animate_value_doublelerp_continuous(_set_function, _sender, _value_function, _value_args, _target_function, _target_args, _easing)
{
	var _instance = animate_value_continuous(obj_utility_doublelerp_continuous, _set_function, _sender, _value_function, _value_args, _target_function, _target_args);
	with(_instance)
	{
		easing = _easing;
	}
	return _instance;
}

function animate_value_lerp(_set_function, _sender, _value, _target, _slope)
{
	var _instance = animate_value_generic(obj_utility_lerp, _set_function, _sender, _value, _target);
	with(_instance)
	{
		slope = _slope;
	}
	return _instance;
}

function animate_value_frames(_set_function, _sender, _value, _target, _frames)
{
	var _instance = animate_value_generic(obj_utility_lerp, _set_function, _sender, _value, _target);
	with(_instance)
	{
		slope = (1.0/_frames);
	}
	return _instance;
}