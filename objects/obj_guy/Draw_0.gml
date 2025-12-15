if(flash != 0)
{
	shader_set(flash_shader);
	u_flash = shader_get_uniform(flash_shader, "flash");
	shader_set_uniform_f(u_flash, flash);
}

var _ranx = 0;
var _rany = 0;
if(shaking)
{
	_ranx = random_range(-shake_mag, shake_mag) * 2 * (shake_xyratio);
	_rany = random_range(-shake_mag, shake_mag) * 2 * (1-shake_xyratio);	
}

var _bounce = 0;
if(bounce > 0)
{
	_bounce = bounce_magnitude*sin(bounce_t);
	
}

draw_sprite_ext(
	sprite_index,
	image_index,
	floor(x) + _ranx,
	floor(y-z) + _rany,
	image_xscale,
	image_yscale + _bounce,
	image_angle,
	image_blend,
	image_alpha
);

if(DEBUG_COLLISIONS){
draw_set_color(c_red);
draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);
draw_set_color(c_white);
}

if(shader_current() != -1) shader_reset();