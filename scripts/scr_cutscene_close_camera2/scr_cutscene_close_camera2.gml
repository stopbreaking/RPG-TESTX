function cutscene_close_camera2(){
	if(instance_exists(obj_gui_cutscene)) with(obj_gui_cutscene) {
		x3_target = RESOLUTION_W;
		call_screen_lerp = 0;
	}
}