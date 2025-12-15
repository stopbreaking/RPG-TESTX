shader_set(shader);
var sample_targets = shader_get_sampler_index(sh_paletteswap, "sample_targets");
texture_set_stage(sample_targets, sprite_get_texture(palette_org, 0));

var sample_replacements = shader_get_sampler_index(sh_paletteswap, "sample_replacements");
texture_set_stage(sample_replacements, sprite_get_texture(palette_alt, 0));
shader_set_uniform_f(u_palette_length, palette_length);
shader_set_uniform_f(u_palette_index, sub_im);

draw_sprite_ext(sprite_org, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
shader_reset();