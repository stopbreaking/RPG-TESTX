function cutscene_reset(){
	with(obj_guy) {
		state = player_state_idle;
		locked = false;
	}
	if(instance_exists(obj_gui_cutscene)) with(obj_gui_cutscene) lerp_open = false; //instance_destroy();
}