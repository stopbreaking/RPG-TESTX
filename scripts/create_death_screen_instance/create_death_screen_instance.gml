function create_death_screen_instance()
{
	instance_create_layer(x, y, "Instances", obj_death_screen_bg);
	instance_create_layer(x, y, "Instances", obj_game_over_game_text);
	instance_create_layer(x, y, "Instances", obj_death_screen_reset_instructions);
	obj_camera.clamping = false;
	with(obj_camera)
	{
		if(instance_exists(animation)) instance_destroy(animation);
		cam_height = RESOLUTION_H;
		cam_width = RESOLUTION_W;
		view_height_half = cam_height/2;
		view_width_half = cam_width/2;
		camera_set_view_size(view_camera[0], cam_height, cam_width);
	}
}