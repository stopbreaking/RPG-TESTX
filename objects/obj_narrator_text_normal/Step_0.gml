if(!printed) {
	text_progress += global.text_speed;
	if(text_progress > string_length(text)) printed = true;
} 

if (printed) && keyboard_check_pressed(vk_space) instance_destroy();