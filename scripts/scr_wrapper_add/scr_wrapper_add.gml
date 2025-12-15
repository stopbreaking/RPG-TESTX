function wrapper_add(_script, _args, _extra){
	return script_execute_array(_script, _args) + _extra;
}