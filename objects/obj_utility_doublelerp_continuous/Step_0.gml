// Doublelerp from original value toward target value
lerp_progress += (1 - lerp_progress) / easing;

value = lerp(script_execute_array(value_function, value_args), script_execute_array(target_function, target_args), lerp_progress);

if(sender == -1 || to_set == scr_empty) 
{
	show_debug_message("Error: Missing script in animation handler!!");
	instance_destroy();
}
script_execute(to_set, sender, value);

if(lerp_progress >= 1) 
{
	instance_destroy();
}
