if(place_meeting(x, y, obj_guy) && !triggered) 
{	
	camera_snap_id_2(target);
	triggered = true;
}

if(!place_meeting(x,y, obj_guy))
{
	triggered = false;
}