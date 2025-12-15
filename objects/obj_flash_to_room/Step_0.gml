if(state == 0)
{
	state = 1;
	room_goto(target_room);
	if(hold_duration <= 0) 
	{
		state = 2;
		timer = duration;
	}
} 

else if(state == 1) 
{
	timer ++;
	if(timer >= hold_duration) 
	{
		state = 2;
		timer = duration;
	}
}

else if (state == 2) {
	timer --;
	
	if (timer <= 0)
	{
		instance_destroy();
	}
	alpha = timer / duration;
}

