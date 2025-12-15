var _ranx = 0;
var _rany = 0;
if(shaking)
{
	_ranx = random_range(-shake_mag, shake_mag);
	_rany = random_range(-shake_mag, shake_mag);	
}

draw_sprite_ext(
	sprite_index,
	image_index,
	x + _ranx,
	y + _rany,
	image_xscale,
	image_yscale,
	image_angle,
	image_blend,
	image_alpha
);