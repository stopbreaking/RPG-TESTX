function cutscene_even_interval(_seconds, _args){
	var _array = []
	array_push(_args[0]);
	for(var _j = 1; _j < array_length(_args); _j ++) 
	{
		array_push(_array, [hold, cutscene_wait, [_seconds]])
		array_push(_args[_j]);
	}
	return _array;
}