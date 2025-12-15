if(state = 0) 
{
	timer ++;
	if(timer >= duration) 
	{
		state = 2;
	}
}

else if (state == 2) 
{
	pause --;
	if(pause <= 0) state = 1;
}

else if (state == 1) {
	timer --;
	
	if (timer <= 0)
	{
		instance_destroy();
	}
}

alpha = timer / duration;