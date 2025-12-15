if(!activated && place_meeting(x, y, obj_guy))
{
	start_timer --;
	if(start_timer <= 0) {
		activated = true;
		image_index = 0;
		sprite_index = spr_floor_spike_activating;
		start_timer = start_timer_max;
	}
}

if(activated && anim_end)
{
	image_index = 0;
	sprite_index = spr_floor_spike_up
	spikes_up = true;
	drop_timer --;
	if(drop_timer <= 0) 
	{
		image_index = 0;
		sprite_index = spr_floor_spike_inactive;
		activated = false;
		anim_end = false;
		spikes_up = false;
		drop_timer = drop_timer_max;
	}
}

if(spikes_up && place_meeting(x,y, obj_guy))
{
	hurt_player(0, 30, 1);
}