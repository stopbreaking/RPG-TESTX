/// @description Insert description here
// You can write your code in this editor

image_speed = 0;

sprite = spr_guy_dead;
gradient_sprite = spr_white_noise_screen;

shader = sh_tex_x_y;
u_mix_amount = shader_get_uniform(shader, "mix_amount");
u_map_index = shader_get_uniform(shader, "map_index");
u_texel_h = shader_get_uniform(shader, "texel_h");
u_squish = shader_get_uniform(shader, "squish");
u_gradient_tex = shader_get_sampler_index(shader, "gradient_tex");

gradient_tex = sprite_get_texture(gradient_sprite, 0);
texel_h = texture_get_texel_height(gradient_tex);

offset = 0;
squish = 3.0;