function destroy_on_call(_script, _args){
	script_execute_array(_script, _args);
	instance_destroy();
}