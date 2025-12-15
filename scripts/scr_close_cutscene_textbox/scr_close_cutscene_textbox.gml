function close_cutscene_textbox() {
	if(!instance_exists(obj_gui_cutscene)) return;
	with(obj_gui_cutscene) text_on = false;
}