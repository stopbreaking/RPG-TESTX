sub_im += spd;
if(sub_im > palette_length) sub_im -= palette_length;

//simple scrolling

if(x > room_width) x -= 4*sprite_get_width(sprite_index)*image_xscale;
if(y > room_height) y -= 4*sprite_get_height(sprite_index)*image_yscale;