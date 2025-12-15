function spawn_floaty_text_over_obj(_instanceid, _text, _yoffset){
	with(_instanceid){
		with(spawn(obj_floaty_text, x, y + _yoffset)) 
		{
			draw_gui = false;
			text = _text;
		}
	}
}