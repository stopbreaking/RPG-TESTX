var _mix_map0 = 1;


offset += 0.3;
offset = offset mod 512.0;

var _map_index0 = offset;

gpu_set_tex_filter(2);

shader_set(shader);
	shader_set_uniform_f(u_mix_amount, _mix_map0);
	shader_set_uniform_f(u_map_index, _map_index0);
	shader_set_uniform_f(u_texel_h, texel_h);
	shader_set_uniform_f(u_squish, squish);
	texture_set_stage(u_gradient_tex, gradient_tex);
	draw_sprite(sprite, -1, x, y);
shader_reset();

gpu_set_tex_filter(false);