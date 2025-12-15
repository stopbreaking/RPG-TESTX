
if (! surface_exists(surfacewithmask)) {surfacewithmask = surface_create(room_width, room_height);}

surface_set_target(surfacewithmask);

draw_sprite(spr_eyeball, 0, 0, 0);

gpu_set_blendmode(bm_subtract);
draw_set_color(c_black);
draw_sprite(spr_eyeball, x, y, 80);
gpu_set_blendmode(bm_normal);

surface_reset_target();

draw_surface(surfacewithmask, x, y);