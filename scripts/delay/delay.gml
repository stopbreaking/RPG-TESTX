function delay(_frames, _script, _args){
	with spawn(obj_delay_execute) 
	{
		alarm[0] = _frames;
		action = _script;
		args = _args;
	}
}