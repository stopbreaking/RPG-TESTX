function draw_y_n_prompt(_prompt){
	for(var k = 0; k < 2; k++)
	{
		if(_prompt.index == k) {
			draw_set_color(_prompt.c_highlight);
			if(_prompt.blink_visibility) draw_text(_prompt.x - 30 + _prompt.spacing*k, _prompt.y, _prompt.selection_marker);
		} else {
			draw_set_color(_prompt.c_default);
		}
		draw_text(_prompt.x + _prompt.spacing*k, _prompt.y, _prompt.options[k]);
	} 
}