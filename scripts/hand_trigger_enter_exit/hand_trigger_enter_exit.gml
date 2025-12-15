function hand_trigger_enter_exit(){
	if(instance_exists(prev_clickable) && prev_clickable != noone && prev_clickable.on_mouse_exit_script != -1) {
		script_execute_array(prev_clickable.on_mouse_exit_script, prev_clickable.on_mouse_exit_args);
		with(prev_clickable) mouse_over = false;
	}
	if(clickable != noone && clickable.on_mouse_enter_script != -1) script_execute_array(clickable.on_mouse_enter_script, clickable.on_mouse_enter_args);
	{
		with(clickable) mouse_over = true;
		prev_clickable = clickable;
	}
}
