function world_to_screen_position_y(_y, _camera = view_camera[0]) {
	var _view_height = camera_get_view_height(_camera);
	var _view_y = camera_get_view_y(_camera);
	var _screen_y = (_y - _view_y);
	return _screen_y;
}