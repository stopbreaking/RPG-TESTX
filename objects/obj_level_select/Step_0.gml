update_text_position();

star_rotation += star_rotation_speed;
if(star_rotation >= 360) star_rotation -= 360;

//star_spin_timer --;
//if(star_spin_timer <= 0) star_spin = true;

hop_progress += hop_increment;
if(hop_progress > selected_string_length/2) hop_progress = hop_reset;

blink_timer = max(0, blink_timer - 1);

flash = max(0, flash - 0.05);


// Completion Shader

completion_shader_offset += completion_shader_offset_increment;
if(completion_shader_offset > 512) completion_shader_offset -= 512;

full_completion_shader_offset += full_completion_shader_offset_increment;
if(full_completion_shader_offset > 512) full_completion_shader_offset -= 512;

selection_marker_x_position += (selection_marker_x_target_position - selection_marker_x_position)/selection_marker_ease;

if(confirm_reset) confirm_box_type_progress ++;

if(alt_blink_timer > 0) 
{
	alt_blink_timer --;
	alt_blink_ticker --;
	if(alt_blink_ticker <= 0)
	{
		alt_blink_visible = !alt_blink_visible;
		alt_blink_ticker = alt_blink_reset;
	}
} else {
	alt_blink_visible = true;
	confirm_reset = confirm_reset_target;
}