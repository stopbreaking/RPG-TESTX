function spawn_floaty_text(_x, _y, _text){
	with(spawn(obj_floaty_text, _x, _y)) 
	{
		draw_gui = false;
	}
}