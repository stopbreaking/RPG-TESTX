function camera_set_size(_size){
	camera_set_view_size(view_camera[0], _size, _size);
	with(obj_camera) 
	{
		view_width_half = _size/2;
		view_height_half = _size/2;
	}
}