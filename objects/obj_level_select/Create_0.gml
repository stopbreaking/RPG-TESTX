select_level = false;

selected = 0;

menu_option = 0;

// Sounds

menu_scroll_sound = snd_blippy;

// Secondary Menu

option[0, 0] = "Play"
option[0, 1] = "Reset"

option[1, 0] = "Yes"
option[1, 1] = "No!!"

//
selection_marker = ">";
selection_marker_x_position_reset = -100;
selection_marker_x_position = selection_marker_x_position_reset;
selection_marker_x_target_position = 0;
selection_marker_ease = 15;

default_color = c_white;
highlight_color = c_yellow;


// High Score Info.
stats_x_offset = -100;

best_time_x_position = RESOLUTION_W / 4 + stats_x_offset;
best_time_y_position = 3 * RESOLUTION_H / 4;

gems_collected_x_position = 3 * RESOLUTION_W / 4 + stats_x_offset;
gems_collected_y_position = 3 * RESOLUTION_H / 4;

// Flash

flash = 0;
u_flash = noone;
flash_shader = sh_white_flash;

blink_timer = 0;
blink_timer_reset = 15
blink_mod = 5;

selected_text_position_x = (RESOLUTION_W*(2/5));
selected_text_position_y = (RESOLUTION_H/2) - 50;
selected_x_offset = -20;

x_offset_offscreen = 400;

star_offset = 200;

text_distance = 30;
text_width = 999;
text_progress = 999;

star_rotation = 0;
star_rotation_speed = 4;

text_y_position = array_create(array_length(global.level_data), 0);
text_y_position_target = array_create(array_length(global.level_data), 0);
text_x_position = array_create(array_length(global.level_data), 0);
text_x_position_target = array_create(array_length(global.level_data), 0);

completion_star_rotation = array_create(array_length(global.level_data), 0);
completion_star_rotation_target = array_create(array_length(global.level_data), 0);

// Letter animation
selected_string_length = string_length(global.level_data[0].name);

hop_progress = -1;
hop_delay_seconds = 0;
hop_delay_alternate = 0.15;
hop_increment = 0.075;
hop_height = 7;
hop_reset = -1;

//
lerp_progress = 0;
lerp_increment = 0.3;

easing = 10;

// Level Completion Shader
completion_star_sprite = spr_pixel_star_6;
gradient_sprite = spr_gradient_shiny_yellow;

completion_shader = sh_scrolling_rainbow_gradient;
u_mix_amount = shader_get_uniform(completion_shader, "mix_amount");
u_map_index = shader_get_uniform(completion_shader, "map_index");
u_texel_h = shader_get_uniform(completion_shader, "texel_h");
u_squish = shader_get_uniform(completion_shader, "squish");
u_gradient_tex = shader_get_sampler_index(completion_shader, "gradient_tex");

gradient_tex = sprite_get_texture(gradient_sprite, 0);
texel_h = texture_get_texel_height(gradient_tex); 

completion_shader_offset = 0;
completion_shader_offset_increment = 0;
completion_shader_squish = 30;

// Level Full Completion Shader
//full_completion_star_sprite = spr_pixel_star_10;
full_completion_star_sprite = spr_pixel_star_6;
full_completion_gradient_sprite = spr_rainbow_gradient_seamless;

full_completion_shader = sh_scrolling_rainbow_gradient;
u_fc_mix_amount = shader_get_uniform(full_completion_shader, "mix_amount");
u_fc_map_index = shader_get_uniform(full_completion_shader, "map_index");
u_fc_texel_h = shader_get_uniform(full_completion_shader, "texel_h");
u_fc_squish = shader_get_uniform(full_completion_shader, "squish");
u_fc_gradient_tex = shader_get_sampler_index(full_completion_shader, "gradient_tex");

f_gradient_tex = sprite_get_texture(full_completion_gradient_sprite, 0);
f_texel_h = texture_get_texel_height(f_gradient_tex); 

full_completion_shader_offset = 0;
full_completion_shader_offset_increment = 0.3;
full_completion_shader_squish = 10;

// Arrow_keys
scroll_timer_reset = 6;
scroll_timer = scroll_timer_reset*2;

up_key_down = false;
down_key_down = false;

// Reset_button
confirm_reset = false;
reset_index = 0;
confirm_box_type_progress = 0;
confirm_dialog_options = ["Yes", "No"]

sprite_reset_box = spr_nine_slice_box_lvl_select;

// Make things blink

alt_blink_timer_reset = 20
alt_blink_timer = alt_blink_timer_reset;
alt_blink_reset = 3;
alt_blink_ticker = alt_blink_reset;
alt_blink_visible = true;

confirm_reset_target = false;

// DELETE SAVE, CLEAR LEVEL DATA
if(file_exists("game.save"))
{
	file_delete("game.save");
}

global.game_data.room_data_persistent = {};
global.game_data.room_data = {};
global.game_data.room_puzzle_data_persistent = {};

// Load Completion Data
obj_game_manager.load_level_completion_status();



update_text_position_targets();
function increment_index()
{
	if(select_level) 
	{
		menu_option ++;
		if(menu_option == array_length(option[0])) menu_option -= array_length(option[0]);
		//selection_marker_x_target_position = selection_marker_x_position_reset;
		return;
	}
	selected ++;
	if!(selected > array_length(global.level_data) - 1)	 {
		selected_string_length = string_length(global.level_data[selected].name);
		update_text_position_targets();
	} else {selected --;}
	hop_progress = hop_reset;
	lerp_progress = 0;
}

function decrement_index()
{
	if(select_level) {
		menu_option --;
		if(menu_option < 0) menu_option = array_length(option[0]) - 1;
		//selection_marker_x_target_position = selection_marker_x_position_reset;
		return;
	}
	selected --;
	if!(selected < 0)	 {
		selected_string_length = string_length(global.level_data[selected].name);
		update_text_position_targets();
	} else selected ++;
	hop_progress = hop_reset;
	lerp_progress = 0;
}

function update_text_position_targets()
{
	for (var j = 0; j < array_length(text_y_position_target); j++)
	{
		if(j == selected)
		{
			text_y_position_target[j] = selected_text_position_y;
			text_x_position_target[j] = selected_text_position_x + selected_x_offset;
			completion_star_rotation_target[j] += star_rotation;
			if(completion_star_rotation_target[j] > 360) completion_star_rotation_target[j] -= 360;
		}
		else if (j > selected)
		{
			text_y_position_target[j] = selected_text_position_y - ((j - selected) * text_distance);
			text_x_position_target[j] = selected_text_position_x;
			//text_x_position_target[j] += selected_x_offset/(10*(j - selected));
			if(select_level) text_x_position_target[j] += x_offset_offscreen;
			completion_star_rotation_target[j] = 0;
		} else if (j < selected) 
		{
			text_y_position_target[j] = selected_text_position_y + ((selected - j) * text_distance);	
			text_x_position_target[j] = selected_text_position_x;
			if(select_level) text_x_position_target[j] += x_offset_offscreen;
			//text_x_position_target[j] += selected_x_offset/(10*(selected - j));
			completion_star_rotation_target[j] = 0;
		}
	}
}

function update_text_position()
{	
	//if(global.level_data[selected].gems_collected == global.level_data[selected].total_gems) completion_star_rotation_target[selected] += star_rotation_speed;
	for (var j = 0; j < array_length(text_y_position); j++)
	{
		text_y_position[j] += (text_y_position_target[j] - text_y_position[j])/easing;
		text_x_position[j] += (text_x_position_target[j] - text_x_position[j])/easing;
		completion_star_rotation[j] += (completion_star_rotation_target[j] - completion_star_rotation[j])/easing;
	}
}

function confirm()
{
	if(confirm_reset) {
		alt_blink_timer = alt_blink_timer_reset;
		alt_blink_ticker = alt_blink_reset;
		alt_blink_visible = false;
		audio_play_sound(snd_classic_game_action_negative_8, 0, false);
	
		if(reset_index == 0)
		{
			audio_play_sound(snd_classic_game_action_negative_8, 0, false);
			obj_game_manager.reset_level_completion(selected);
			confirm_reset_target = false;
		} else 
		{
			audio_play_sound(ui_button_click_5_327756, 0, false);
			confirm_reset_target = false;
		}
	} else
	{
		audio_play_sound(ui_button_click_5_327756, 0, false);
		if(select_level == false) {
			select_level = true;
			update_text_position_targets();
			menu_option = 0;
			selection_marker_x_position = selection_marker_x_position_reset;
		} else 
		{
			if(menu_option == 0) {
				obj_game_manager.start_level(selected);
			}
			else 
			{
				confirm_reset = true;
				confirm_reset_target = true;
				confirm_box_type_progress = 0;
				reset_index = 0;
			}
		}
	}
}