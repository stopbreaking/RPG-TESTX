timer --;

if (place_meeting(x, y, obj_guy))
{
	hurt_player(0, 20, 1);
}

if(timer <= 0)
{
	instance_destroy();
}
