/// @description Execute a list of scripts one after another. Immediately calls the first action.
/// @param {Array} _actions
function start_cutscene(_actions){
	show_debug_message("Starting cutscene!");
	with(instance_create_layer(x,y, "Instances", obj_gui_cutscene))
	{
		letterboxing = false;
		second_camera_on = false;
		text_on = false;
	} // Idk if this is really needed for every situation but I want the letterbox and textbox effects sometimes so ill keep it here till it causes problems
	new_cutscene(_actions);
	cutscene_call_next_action();
}