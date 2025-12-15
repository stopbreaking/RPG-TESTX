function wait_for_proceed(){
	with (obj_gui_cutscene)
	{
			if(instance_exists(obj_cutscene_action)) text_action = obj_cutscene_action;
	}
}