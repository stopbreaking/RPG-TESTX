function new_text_box(_args){
	var _obj;
	if(instance_exists(obj_text_1)) _obj = obj_text_1_queued; else _obj = obj_text_1;
	with (instance_create_layer(0,0, "Instances", _obj))
	{
		s_message = _args[0];
		if (instance_exists(other)) origin_instance = other.id else origin_instance = noone;
		if (array_length(_args) > 1) background = _args[1]; else background = 1;
	}
	
	/*
	with (obj_guy) 
	{
		if(state != player_state_locked) 
		{
			last_state = state;
			state = player_state_locked;
		}
	}*/
	
	//figure this out I guess.
}