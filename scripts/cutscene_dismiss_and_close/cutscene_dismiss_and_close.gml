function cutscene_dismiss_and_close(){
	unlock_hand();
	unlock_player();
	c_set_textbox_visibility(false);
	if(instance_exists(obj_gui_cutscene)) with(obj_gui_cutscene) {
		x3_target = RESOLUTION_W;
		// Top box
		x1_2_target = - 100;
		x1_1 -= 100;
		x1_1_target -= 100;

		// Bottom_box
		x2_1_target = RESOLUTION_W + 100;
		x2_2 += 100;
		x2_2_target += 100;
	
		// Lerp and close object
		lerp_progress = 0;
		lerp_open = false;
		
		closing = true;
	}
}