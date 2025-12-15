draw_set_font(fnt_lvl_select);
draw_set_halign(fa_left);

/*
draw_set_color(c_black);
draw_set_alpha(0.8);
draw_rectangle(250, 120, 500, 400, false);
draw_set_color(c_white);
draw_set_alpha(1);
*/

// Draw levels that can be selected.
//draw a dark half-transparent square behind text??
for (var i = 0; i < array_length(global.level_data); i++)
{
	if(i == selected)
	{
		if(flash != 0)
		{
			shader_set(flash_shader);
			u_flash = shader_get_uniform(flash_shader, "flash");
			shader_set_uniform_f(u_flash, flash);
		}
		
		if(global.level_data[i].gems_collected == global.level_data[i].total_gems) 
		{
				var _mix_map0 = 1;
				var _map_index0 = full_completion_shader_offset;
				gpu_set_tex_filter(2);
				shader_set(full_completion_shader);
				shader_set_uniform_f(u_fc_mix_amount, _mix_map0);
				shader_set_uniform_f(u_fc_map_index, _map_index0);
				shader_set_uniform_f(u_fc_texel_h, texel_h);
				shader_set_uniform_f(u_fc_squish, full_completion_shader_squish);
				texture_set_stage(u_fc_gradient_tex, f_gradient_tex);
		} else 
		{
			if(global.level_data[i].completed) {
				var _mix_map0 = 1;
				var _map_index0 = completion_shader_offset;
				gpu_set_tex_filter(2);
				shader_set(completion_shader);
				shader_set_uniform_f(u_mix_amount, _mix_map0);
				shader_set_uniform_f(u_map_index, _map_index0);
				shader_set_uniform_f(u_texel_h, texel_h);
				shader_set_uniform_f(u_squish, completion_shader_squish);
				texture_set_stage(u_gradient_tex, gradient_tex); 
			}
		}
		
		if((blink_timer+1) % blink_mod == 0) draw_set_alpha(0);
		
		draw_set_color(c_black);
		type_hopping_letters_anim_curve_proper
		(
		text_x_position[i] - 1, 
		text_y_position[i] + 1, 
		global.level_data[i].name, 
		text_progress, 
		text_width, 
		hop_progress, 
		hop_delay_alternate, 
		hop_height, 
		ac_letterjump6);
		draw_set_color(highlight_color);
		type_hopping_letters_anim_curve_proper
		(
		text_x_position[i], 
		text_y_position[i], 
		global.level_data[i].name, 
		text_progress, 
		text_width, 
		hop_progress, 
		hop_delay_alternate, 
		hop_height, 
		ac_letterjump6); // Extremely expensive function. Fix it to be less expensive?
		
		shader_reset(); // needed here?
	}
	else
	{
		draw_set_alpha(1);
		shader_reset();
		draw_set_color(c_black);
		draw_text(text_x_position[i] - 1, text_y_position[i] + 1, global.level_data[i].name);
		draw_set_color(c_white);
		draw_text(text_x_position[i], text_y_position[i], global.level_data[i].name);
	}
	draw_set_alpha(1);
	var _rotation = 0;
	if (i == selected) _rotation = star_rotation;
	if(global.level_data[i].completed)
		{
			if(global.level_data[i].gems_collected == global.level_data[i].total_gems)
			{
				// Completion Shader
				var _mix_map0 = 1;
				var _map_index0 = full_completion_shader_offset;
				//gpu_set_tex_filter(2);
				shader_set(full_completion_shader);
				shader_set_uniform_f(u_fc_mix_amount, _mix_map0);
				shader_set_uniform_f(u_fc_map_index, _map_index0);
				shader_set_uniform_f(u_fc_texel_h, texel_h);
				shader_set_uniform_f(u_fc_squish, full_completion_shader_squish);
				texture_set_stage(u_fc_gradient_tex, f_gradient_tex);
				draw_sprite_ext(full_completion_star_sprite, -1, text_x_position[i] + star_offset, text_y_position[i] + string_height("A")/2, 1, 1, completion_star_rotation[i], c_white, 1);
				shader_reset();

				gpu_set_tex_filter(false);
			}
			 else if (global.level_data[i].completed)
			 {
				var _mix_map0 = 1;
				var _map_index0 = completion_shader_offset;
				//gpu_set_tex_filter(2);
				shader_set(completion_shader);
				shader_set_uniform_f(u_mix_amount, _mix_map0);
				shader_set_uniform_f(u_map_index, _map_index0);
				shader_set_uniform_f(u_texel_h, texel_h);
				shader_set_uniform_f(u_squish, completion_shader_squish);
				texture_set_stage(u_gradient_tex, gradient_tex);
				draw_sprite_ext(completion_star_sprite, -1, text_x_position[i] + star_offset, text_y_position[i] + string_height("A")/2, 1, 1, completion_star_rotation[i], c_white, 1);
				shader_reset();
			 }
			 else draw_sprite_ext(spr_pixel_star_6, 0, text_x_position[i] + star_offset, text_y_position[i] + string_height("A")/2, 1, 1, completion_star_rotation[i], c_white, 1);
		} else 
		{
			draw_sprite_ext(spr_pixel_star_8, 0, text_x_position[i] + star_offset, text_y_position[i] + string_height("A")/2, 1, 1, completion_star_rotation[i], c_white, 1);
		}
		gpu_set_tex_filter(false);
}

if(select_level)
{
	draw_set_alpha(0.3);
	draw_sprite(global.level_data[selected].preview_image, 0, 0, 0);
	draw_set_alpha(1);
	// Best Time
	draw_set_font(fnt_lvl_select_stats);
	var time_minutes = floor(global.level_data[selected].best_time / 3600);
	var minute_filler = "";
	if(floor(time_minutes / 10) == 0) minute_filler = "0"
	var time_seconds = floor((global.level_data[selected].best_time / 60) % 60);
	var second_filler = "";
	if(floor(time_seconds /10) == 0) second_filler = "0"
	var best_time_string = string_concat("Best Time: ", minute_filler, time_minutes, ":", second_filler, time_seconds);
	if(global.level_data[selected].completed) draw_set_color(highlight_color);
	draw_text(best_time_x_position, best_time_y_position, best_time_string);
	draw_set_color(default_color);
	// Gems
	if(global.level_data[selected].gems_collected == global.level_data[selected].total_gems) draw_set_color(highlight_color);
	draw_text(gems_collected_x_position, gems_collected_y_position, string_concat("Gems Collected : ", global.level_data[selected].gems_collected,  "/", global.level_data[selected].total_gems));
	draw_set_color(default_color);
	// Option to play or reset
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	for(var j = 0; j < array_length(option[0]); j++)
	{
		if(menu_option == j) {
			draw_set_color(highlight_color);
			var _option_width = string_width(option[0, j])/2;
			var _marker_width = string_width(selection_marker);
			selection_marker_x_target_position = SCREEN_CENTER - _option_width - _marker_width;
			draw_text(selection_marker_x_position, selected_text_position_y + 60 + 60*(j+1), selection_marker)
		} else {
			draw_set_color(default_color);
		}
		draw_text(SCREEN_CENTER, selected_text_position_y + 60 + 60*(j+1), option[0, j]);
	}
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}

if(confirm_reset) 
{
	draw_set_color(c_white);
	draw_set_font(fnt_lvl_select);
	draw_sprite_stretched(sprite_reset_box, 0, SCREEN_CENTER/2, SCREEN_MIDDLE*2/5, 360, 180);
	var _x = SCREEN_CENTER/2 + 60;
	var _y = SCREEN_MIDDLE*2/5 + 30;
	type(_x, _y, "Are you sure?", confirm_box_type_progress, 10000);
	
	for(var k = 0; k < 2; k++)
	{
		if(reset_index == k) {
			draw_set_color(highlight_color);
			if(alt_blink_visible) draw_text(SCREEN_CENTER/2 + 30 + 120*k, SCREEN_MIDDLE*2/5 + 120, selection_marker);
		} else {
			draw_set_color(default_color);
		}
		draw_text(SCREEN_CENTER/2 + 60 + 120*k, SCREEN_MIDDLE*2/5 + 120, confirm_dialog_options[k]);
	}
}


//Draw rectangles around resolution because fullscreen doesn't recognize the viewport size as boundaries.
/*draw_set_color(c_black);
draw_rectangle(-400, 0, 0, 720, false);
draw_set_color(c_black);
draw_rectangle(720, 0, 1440, 720, false); */
// Reset things
draw_set_color(c_white);
draw_set_alpha(1);
shader_reset();
gpu_set_tex_filter(false);
