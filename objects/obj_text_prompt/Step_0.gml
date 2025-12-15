if (printed) 
{
	if(!reset && behaviour != -1 && behaviour_args != [-1]) script_execute_array(behaviour, behaviour_args);
} else 
{
	text_progress += global.text_speed;
	if(text_progress > string_length(text)) printed = true;
}


if(blink)
{
	if(blink_time < blink_dur)
	{
		draw = ((blink_time / blink_freq) % 2) == 0;
	} else 
	{
		draw = true;
	}
	blink_time ++;
}

if (fulfilled && keyboard_check_pressed(vk_space)) instance_destroy();