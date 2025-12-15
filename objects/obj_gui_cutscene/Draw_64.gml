//---------Camera2---------//
if(surface_exists(surf) && second_camera_on){
		
		surface_set_target(surf);
		
		gpu_set_blendmode(bm_subtract);
		draw_set_colour(c_black);
		draw_rectangle(0, 0, x3, RESOLUTION_H, false); // This is the window for the phone call.
		gpu_set_blendmode(bm_normal);
		
		surface_reset_target();
		
		draw_surface(surf, 0, 0);
}
//---------Letterboxing---------//
if(letterboxing) {
	nine_slice_box_stretched(spr_gui_letterbox, x1_1, y1_1, x1_2, y1_2, background);
	nine_slice_box_stretched(spr_gui_letterbox, x2_1, y2_1, x2_2, y2_2, background);
}

//---------Textbox---------//
if(text_on) // Idk..
{
	nine_slice_box_stretched(spr_cool_nine_slice_text_box6_3, textbox.x, textbox.y, textbox.x1, textbox.y1, background - 1);
	draw_set_font(fnt_text5);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_color(c_white);
	
	/*
	if(text_progress >= string_length(text) + 15 && player_control_on)
	{
		draw_sprite(spr_next_arrow_static, 0, textbox.x1 - 32, textbox.y1 - 10); // animate somehow?
	}*/
	
	if(text_progress < string_length(text))
	{
		//audio_play_sound(snd_woa, 0, 0, 1, 0, 2); // Sounds like a great robot thing.
	}
	
	var _center_y = ((textbox.y1 + textbox.y)/2);
	
	if(portrait_on) 
	{
		// Mask it to the inside of the textbox!
		gpu_set_blendenable(false)
		gpu_set_colorwriteenable(false,false,false,true);
		draw_set_alpha(0);
		draw_rectangle(0,0, room_width,room_height, false);
		
		
		draw_set_alpha(1);
		nine_slice_box_stretched(spr_cool_nine_slice_text_box_mask, textbox.x, textbox.y, textbox.x1, textbox.y1, background - 1);
		gpu_set_blendenable(true);
		gpu_set_colorwriteenable(true,true,true,true)
		
		
		gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
		gpu_set_alphatestenable(true);
		
		// Drawr it
		draw_sprite(portrait_sprite_idle, 0, textbox.x + portrait_pad + 10, _center_y - (portrait_width/2));
		gpu_set_alphatestenable(false);
		gpu_set_blendmode(bm_normal);
		
		type(textbox.x + margin + portrait_width + 2*portrait_pad + 10, textbox.y + portrait_pad + 10 + 5, text, text_progress, textbox.x1 - textbox.x - 2*margin - (portrait_width + 2*portrait_pad));
	} else 
	{
		type(textbox.x + margin, textbox.y + 10 + 5, text, text_progress, textbox.x1 - textbox.x - 2*margin);
	}
	// outline text - center of the textbox,,, NOT ind. Characters : O, needs to be changed next.
}