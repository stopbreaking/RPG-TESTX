draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
draw_set_font(font);

type_middle_color(x, y, text, text_progress, text_width, c1, c2, c3, c4);

draw_set_font(fnt_optixal_small);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

if(printed)
{
	draw_text(RESOLUTION_H - 20, RESOLUTION_W - 40, "(space)");
	draw_sprite(spr_next_arrow_static2, 0, RESOLUTION_H - 20, RESOLUTION_W - 20);
}