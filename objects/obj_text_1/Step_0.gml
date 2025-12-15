lerp_progress += (1 - lerp_progress) / 50;
text_progress += global.text_speed;

x1 = lerp(x1, x1_target, lerp_progress);
x2 = lerp(x2, x2_target, lerp_progress);

var _message_length = string_length(s_message);

if(point_distance(global.talker.x, global.talker.y, obj_guy.x, obj_guy.y) > 360) 
{
	npc_stop_talking(global.talker);
	with(obj_text_1_queued) instance_destroy();
	instance_destroy();
}

if(text_progress >= _message_length) {
	if(text_printed == false) // shut the npc's mouth 
	{
		text_printed = true;
	}
}
else {
	text_printed = false;
}

if(text_progress >= _message_length*1.5)
{
	global.mini_text_printed = true;
}

if (keyboard_check_pressed(vk_space)) 
{
	if(text_printed) 
	{
		instance_destroy();
		if(instance_exists(obj_text_1_queued)) 
		{
			with(obj_text_1_queued) ticket --;
			global.talker.image_speed = 1;
			global.talker.image_index = 0;
			global.mini_text_printed = false;
		} else 
		{
			if(global.talker != noone) npc_stop_talking(global.talker);
			with(obj_guy) state = last_state;
		}
	}		
	else 
	{
		if (text_progress > 2) 
		{
			text_progress = _message_length;
			lerp_progress = 1;
		}
	}
}

//Blinking
blink_ticker --;
if(blink_ticker < 0)
{
	blink_visiblity = !blink_visiblity;
	blink_ticker = blink_ticker_reset;
}