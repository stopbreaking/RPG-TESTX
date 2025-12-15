function easein_elastic(_t){
	var _c4 = (2 * pi) / 3;
	if(_t == 0) return 0;
	if(_t == 1) return 1;
	return -power(2, 10 * _t - 10) * sin((_t * 10 - 10.75) * _c4);
}