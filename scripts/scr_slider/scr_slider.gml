function slider(_obj, _scale, _set_function){
	var _slider = spawn(obj_slider, 0, y + global.slider_count * 128);
	with(_slider)
	{
		scale = _scale;
		user = _obj;
	}
	_slider.init();
}