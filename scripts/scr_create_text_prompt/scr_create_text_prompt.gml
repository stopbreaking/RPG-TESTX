function create_text_prompt(_text, _behaviour, _behaviour_args){
	with(instance_create_layer(0, 0, "Instances", obj_text_prompt)) 
	{
		behaviour = _behaviour;
		behaviour_args = _behaviour_args;
		text = _text;
	}
}