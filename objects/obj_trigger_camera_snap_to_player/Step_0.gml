if(place_meeting(x, y, obj_guy) && !triggered) 
{	
	camera_snap_to_player();
}

if(!place_meeting(x, y, obj_guy)) 
{	
	triggered = false;
}
