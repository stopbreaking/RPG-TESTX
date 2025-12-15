/*
nine_slice_box_stretched(spr_cool_nine_slice_text_box, x1, y1, x2, y2, background);
draw_set_font(fnt_text);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_white);
var _print = string_copy(s_message, 1, text_progress);

/*
if (responses[0] != -1) && (text_progress >= string_length(s_message))
{
	for (var i = 0; i < array_length(responses); i++)
		{
			_print += "\n";
			if (i == response_selected) _print += "> ";
			_print += responses[i];
			if (i == response_selected) _print += "< "
		}
}*/
/*
draw_text((x1+x2) / 2, y1+8, _print); // outline text - center of the textbox,,, NOT ind. Characters : O, needs to be changed next.
draw_set_color(c_white);
draw_text((x1+x2) / 2, y1+7, _print); // 
*/
