// Draw the shadow
draw_sprite_ext(spr_gem_shadow, image_index, x, y, image_xscale * abs((z +  - float_height)/(2*float_height)), image_yscale* abs((z - float_height)/(2*float_height)), image_angle, image_blend, image_alpha);

// Draw the gem
draw_sprite(sprite_index, image_index, x, y - 6 + z);



//draw_sprite_ext(sprite_index, image_index, x, y, image_xscale * abs((z - float_height)/(2*float_height)), image_yscale* abs((z - float_height)/(2*float_height)), image_angle, image_blend, image_alpha);
// I REALLY LIKE THIS EFFECT FOR FLOWERY STUFF!!