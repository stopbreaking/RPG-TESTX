if(place_meeting(x, y, obj_guy) && obj_guy.state == player_state_falling && cooldown == 0)
{
	image_index ++;
	cracks ++;
	if(cracks == 2)
	{
		instance_destroy();
	}
	else instance_place(x,y, obj_guy).z_level = 0; // ???? This whole thing seems wonky and dumb.
	cooldown = 60;
}
cooldown = max(0, cooldown - 1);