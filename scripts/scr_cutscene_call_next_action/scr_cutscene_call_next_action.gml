function cutscene_call_next_action(){
	
	with(obj_cutscene_action) { 
		if(action_script == destroy_on_call)
			show_debug_message("cutscene action {0} triggered", string(action_args[0])); // add action id?
		else 
			show_debug_message("cutscene action {0} triggered", string(action_script)); // add action id?
			
		script_execute_array(action_script, action_args);
	}
}