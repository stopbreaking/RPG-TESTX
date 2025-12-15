function set_cam_size_uniform(_actor, _size){
	with(_actor)
	{
		cam_width = RESOLUTION_W*_size;
		cam_height = RESOLUTION_H*_size;
		view_width_half = cam_width/2;
		view_height_half = cam_height/2;
		camera_set_view_size(view_camera[0], cam_width, cam_height);
	}
}