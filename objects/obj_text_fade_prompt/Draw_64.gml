var _a = clamp(alpha, 0, 1);

draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
draw_set_font(fnt_optixal);

type_hopping_letters_anim_curve_proper(x - text_width/4, y, text, text_progress, text_width, hop_progress, hop_delay_alternate, hop_height, ac_letterjump6);

//type_middlealign_hopping_letters_curve(x, y, text, text_progress, text_width, hop_progress, hop_delay_alternate, hop_height, ac_letterjump6);

draw_set_font(fnt_optixal_small);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

if(text_progress >= string_length(text))
{
	draw_text(RESOLUTION_H - 20, RESOLUTION_W - 40, "(space)");
	draw_sprite(spr_next_arrow_static2, 0, RESOLUTION_H - 20, RESOLUTION_W - 20);
}