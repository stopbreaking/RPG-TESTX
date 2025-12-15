function new_narrator_text_normal(_text){
	var _aobj = self;
	with (instance_create_layer(0, 0, "Instances", obj_narrator_text_normal)) 
	{
		text = _text;
		action_obj = _aobj;
	}
}

function new_narrator_text_normal_bypass(_text){
	with (instance_create_layer(0, 0, "Instances", obj_narrator_text_normal)) 
	{
		text = _text;
	}
}