function c_set_textbox_visibility(_value){
	if(!instance_exists(obj_gui_cutscene)) { show_debug_message("Error: no cutscene object!"); return;}
	with(obj_gui_cutscene) text_on = _value;
}