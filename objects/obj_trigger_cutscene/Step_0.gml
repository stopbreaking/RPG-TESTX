if(!triggered && place_meeting(x, y, obj_guy)) {
	cutscene(scene_id);
	show_debug_message("cutscene triggered by object");
	triggered = true; 
}