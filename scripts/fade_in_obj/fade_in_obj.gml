function fade_in_obj(_obj, _x, _y, _frames = 60){
	var _inst = spawn(_obj, _x, _y);
	with spawn(_obj, _x, _y) {
		image_alpha = 0;
	}
	animate_value_frames(set_alpha, _inst, 0, 1, _frames);
}