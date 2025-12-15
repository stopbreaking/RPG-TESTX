function destroy_cutscene_gui(){
	if(!instance_exists(obj_gui_cutscene)) return;
	with(obj_gui_cutscene) instance_destroy();
}