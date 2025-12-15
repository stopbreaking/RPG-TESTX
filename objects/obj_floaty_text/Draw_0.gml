if(draw_gui) return;
draw_set_font(fnt_optixal_small);
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_set_alpha(image_alpha);
draw_text(world_x, world_y, text);
draw_set_alpha(1);
draw_set_halign(fa_left);

