function world_to_screen_position_x(_x, _camera = view_camera[0]) {
	var _view_width = camera_get_view_width(_camera);
	var _view_x = camera_get_view_x(_camera);
	var _screen_x = (_x - _view_x);
	return _screen_x;
}