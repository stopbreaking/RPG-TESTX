if(place_meeting(x, y, obj_guy))
{
	timer --;
	if(timer <= 0) 
	{
		image_alpha = 1;
	}
} else {	
	image_alpha -= image_alpha / 50;
	timer = timer_max;
}