///@function unfold_array(_args)
///@description Execute and replace any functions and parameters nested in the array
///@param {Array} _args
///@return {Array<Any>}

function unfold_array(_args, _special = 0, _delay = false){
	var _nn = array_length(_args);
	var _temp_list = ds_list_create();
	for (var _ii = 0; _ii < _nn; _ii++)
	{
		if(is_method(_args[_ii]) || is_handle(_args[_ii]) && string_starts_with(string(_args[_ii]), "ref script"))
		{
			if(_delay && _ii == 1)
			{
				ds_list_add(_temp_list, _args[_ii]);
			} else if(_ii < (_nn - 1) && is_array(_args[_ii + 1]) && !string_starts_with(string(_args[_ii]), "function gml_Script_me"))
			{
				ds_list_add(_temp_list, script_execute_array(_args[_ii], unfold_array(_args[_ii + 1])));
				_ii ++;
			}
			else {
				ds_list_add(_temp_list, script_execute(_args[_ii]));
			}
		} else if (_special > 0 && _ii == (3 - _special)) /*_ii != 0 &&_ii == _nn - 1 && is_array(_args[_ii])*/ // Fucks over passing the names of methods, but i don't think i'll need them.
		{	// Basically assume the last array is an entire new dialogue branch and skip over the beginning parts like in new_cutscene
			// This is terrible, how the fuck do I not do this.
			// FORGIVE ME! FORGIVE ME!! I JUST WANTED TO GET IT DONE!
			var _arguments = array_deep_copy(_args[_ii]); 
			for (var _i = 0; _i < array_length(_arguments); _i++)
			{
				var _j = 0;
				var _special_exit_conditions = (_arguments[_i][0] == hold) || _arguments[_i][0] == 0;
				if(_special_exit_conditions) _j = 1;
				var _args2 = [];
			
			if(array_length(_arguments[_i]) > 1 + _j) {
				_args2 =  _arguments[_i][_j + 1];
				_arguments[_i][_j + 1] = unfold_array(_args2); 
			}
			}
			ds_list_add(_temp_list, _arguments);
		} 
		else 
		{
			ds_list_add(_temp_list, _args[_ii]);
		}
	}
	// Convert list to array :P
	_nn = ds_list_size(_temp_list);
	var _new_args = array_create(_nn, 0);
	for (var _jj = 0; _jj < _nn; _jj ++) 
	{
		_new_args[_jj] = _temp_list[| _jj];
	}
	ds_list_destroy(_temp_list);
	
	return _new_args;
}

// If the first argument is a method with > 0 args. Take the second argument as parameters.
// Then execute/replace the first argument and remove the second.
// Check if the first argument of parameters is a method.
