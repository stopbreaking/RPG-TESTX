	if(!confirm_window.open) return;
	
	draw_set_color(c_white);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	ui_draw_window(confirm_window);
	type_text_element(confirm_text);
	
	draw_y_n_prompt(confirm_prompt);
	
	
	draw_set_color(c_white);