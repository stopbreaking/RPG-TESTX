function instance_destroyall(_instances){
	while(array_length(_instances) > 0)
		instance_destroy(array_pop(_instances));
}