/// @description Insert description here
// You can write your code in this editor
event_inherited();
image_speed = 0;

sprite = spr_door_digital_noblack;
gradient_sprite = spr_rainbow_gradient_seamless;

shader = sh_white_sphere;
u_mix_amount = shader_get_uniform(shader, "mix_amount");
u_map_index = shader_get_uniform(shader, "map_index");
u_texel_h = shader_get_uniform(shader, "texel_h");
u_squish = shader_get_uniform(shader, "squish");
u_gradient_tex = shader_get_sampler_index(shader, "gradient_tex");

gradient_tex = sprite_get_texture(gradient_sprite, 0);
texel_h = texture_get_texel_height(gradient_tex);

offset = 0;
squish = 3.0;

on_mouse_enter_script = set_image_index;
on_mouse_enter_args = [self, 1];

on_mouse_exit_script = set_image_index;
on_mouse_exit_args = [self, 0];

if(rm_next != noone) {
	dialogue_array[0] = 
	[
		[cutscene_enter],
		[set_image_index, [me, 1]],
		[set_room_transition_junk, [link_id]],
		[fade_to_room, [rm_next, 60, c_black, snd_door_beep]],
	]
}