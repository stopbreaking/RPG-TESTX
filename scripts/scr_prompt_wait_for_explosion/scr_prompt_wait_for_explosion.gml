function prompt_wait_for_explosion(){
	if(!instance_exists(obj_landmine))
		instance_destroy();
}