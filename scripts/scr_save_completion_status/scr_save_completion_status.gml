function save_completion_status(){
	
	
	var _string = json_stringify(global.level_data);
	var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer, "completion.save");
	buffer_delete(_buffer);

	show_debug_message("completion status saved!");
	with(spawn(obj_floaty_text, RESOLUTION_W - 50, RESOLUTION_H - 40)) draw_gui = false;
}