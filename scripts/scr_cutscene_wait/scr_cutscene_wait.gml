function cutscene_wait(_seconds){
	var _ob = self;
	with (instance_create_layer(0, 0, "Instances", obj_destroy_timer)) 
	{
		obj = _ob;
		t = _seconds*FRAME_RATE;
	}
}