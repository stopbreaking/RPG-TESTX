if(primed)
{
	sprite_index = spr_landmine_red;
	timer --;
	if(timer <= 0)
	{
		instance_change(obj_explosion, true);
	}
} else
{
	if(place_meeting(x,y, obj_guy) || place_meeting(x,y, obj_bug_alive))
	{
		primed = true;
	}
}