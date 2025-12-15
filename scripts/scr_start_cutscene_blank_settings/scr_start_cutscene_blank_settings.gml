function start_cutscene_blank_settings() { // I think the same Gui object can be tweaked to make a fall happen
	with(instance_create_layer(x,y, "Instances", obj_gui_cutscene))
	{
		letterboxing = false;
		second_camera_on = false;
		text_on = true;
	}
}