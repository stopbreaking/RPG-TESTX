function type_text_element(_element){
	draw_set_font(_element.font);
	type(_element.x, _element.y, _element.text, _element.progress, 1000);
}