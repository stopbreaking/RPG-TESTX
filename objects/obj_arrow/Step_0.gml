if(place_meeting(x,y, obj_guy))
{
	hurt_player(direction, 30, 1);
	instance_destroy();
} else if place_meeting(x,y, obj_blocks_projectiles)
{
	instance_destroy();
}

range -= spd;
if(range <= 0)
{
	instance_destroy();
}

depth = -y;