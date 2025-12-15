function new_cutscene_action(_script, _args, _wait, _insert = false){	
	// Unfold methods in action
	var _delay = (_script == delay);
	var _nested_dialogue = 0;
	if(string_starts_with(string(_script), "ref script c_insert_if_true"))
	{	
		_nested_dialogue ++;
		if(_nested_dialogue && _args[0] == true) _nested_dialogue ++;
	}
	var _new_args = unfold_array(_args, _nested_dialogue, _delay);
	
	var _obj;
	if(instance_exists(obj_cutscene_action)) _obj = obj_cutscene_action_queued; else _obj = obj_cutscene_action;
	if(_insert) _obj = obj_cutscene_action_insert;
	with (instance_create_layer(0,0, "Instances", _obj))
	{
		if(_wait) 
		{
			action_script = _script;
			action_args = _new_args;
		}
		else { //special exit conditions
			action_script = destroy_on_call;
			action_args = [_script, _new_args];
		}
		if (instance_exists(other)) origin_instance = other.id else origin_instance = noone;
	}
	if(_obj == obj_cutscene_action) 
	{	
		show_debug_message("Recognized as first action");
	}
}