if(place_meeting(x,y, obj_guy))
{
	sprite_index = sprite_pickup;
	triggered = true;
	x = obj_guy.x;
	y = obj_guy.y - 128;
	lock_player();
	with(obj_guy)
	{
		sprite_index = spr_guy_with_hat_uppy;
	}
}

if(triggered)
{
	despawn_timer --;
	if(despawn_timer <= 0)
	{
		instance_destroy();
		if(!global.cutscene_on) unlock_player();
		else 
		{
			instance_destroy(obj_cutscene_action); // continue the cutscene
		}
	}
}