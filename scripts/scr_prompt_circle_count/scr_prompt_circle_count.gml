function prompt_circle_count(_count){
	if(global.circle_count >= _count) 
	{
		instance_destroy();
	}
}