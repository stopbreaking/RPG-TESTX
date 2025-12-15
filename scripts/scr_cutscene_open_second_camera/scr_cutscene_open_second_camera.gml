function cutscene_open_second_camera(){
	with(obj_camera_phone)
	{
		active = true;
	}
	with(obj_gui_cutscene)
	{
		second_camera_on = true;
	}
	set_camera_offset(CAMERA_OFFSET.RIGHT);
	set_camera_offset(CAMERA_OFFSET.PHONE_CORRECT);
}