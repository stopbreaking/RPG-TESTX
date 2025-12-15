function add_and_remake_array(_array, _item){ //idgaf about performance, this just needs to work.
	if(array_contains(_array, _item)) return _array;
	var _n = array_length(_array);
	var _x = array_create(_n, 0);
	for (var _i = 0; _i < _n; _i++) {
		_x[_i] = _array[_i];
	}
	_x[_n] = _item;
	return _x;
}