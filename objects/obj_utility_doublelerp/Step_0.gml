// Doublelerp from original value toward target value
lerp_progress += (1 - lerp_progress) / easing;

value = lerp(value, target, lerp_progress);

if(sender == -1 || to_set == scr_empty) 
{
	show_debug_message("Error: Missing script in animation handler!!");
	instance_destroy();
}
script_execute(to_set, sender, value);

show_debug_message(lerp_progress); // I don't know what the hell is going on here, but lerp_progress is nowhere near 1.. 

if(lerp_progress >= 0.15) 
{
	instance_destroy();
}