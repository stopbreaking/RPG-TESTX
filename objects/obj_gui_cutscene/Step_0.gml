lerp_progress += (1 - lerp_progress) / 75;
if(second_camera_on) call_screen_lerp += (1 - call_screen_lerp) / 10000;

// Top box
x1_1 = lerp(x1_1, x1_1_target, lerp_progress);
x1_2 = lerp(x1_2, x1_2_target, lerp_progress);
y1_1 = lerp(y1_1, y1_1_target, lerp_progress);
y1_2 = lerp(y1_2, y1_2_target, lerp_progress);

// Bottom box
x2_1 = lerp(x2_1, x2_1_target, lerp_progress);
x2_2 = lerp(x2_2, x2_2_target, lerp_progress);
y2_1 = lerp(y2_1, y2_1_target, lerp_progress);
y2_2 = lerp(y2_2, y2_2_target, lerp_progress);

// Phonecall mask sprite
x3 = lerp(x3, x3_target, call_screen_lerp);

if(closing && abs(x1_1 - x1_2) < 1) instance_destroy();



// Textbox adjust to alignment (I need to learn other animation types..)
textbox.x += (tx1 - textbox.x) / 10;
textbox.x1 += (tx2 - textbox.x1) / 10;
textbox.y += (ty1 - textbox.y) / 10;
textbox.y1 += (ty2 - textbox.y1) / 10;

if(text_on){
	// Text printing..
	if(instance_exists(text_action)) 
	{
		text_progress += global.text_speed;
		var _message_length = string_length(text);

		if(keyboard_check(vk_shift)) text_progress = 9999;

		if(text_progress >= _message_length) {
		text_printed = true;
	}
	else {
		text_printed = false;
	}
	
	if ((keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("Z"))) && player_control_on) 
	{
		if(text_printed) 
		{
			audio_play_sound(snd_edited_newagesoup__finger_snap_stereo_05, 0, false, 0.5, 0, 3);
			instance_destroy(text_action);
			show_debug_message("text action destroyed from gui object");
		}		
		else 
		{
			if (text_progress > 2) 
			{
				text_progress = 9999;
			}
		}
	}
}
}