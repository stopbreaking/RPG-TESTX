function cutscene_set_text(_text){
	with (obj_gui_cutscene)
	{
			if(!text_on) text_on = true;
			text = _text;
			if(instance_exists(obj_cutscene_action)) text_action = obj_cutscene_action;
			text_progress = 0;
	}
}