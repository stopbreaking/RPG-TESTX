if(instance_exists(obj)) with(obj)
{
	instance_destroy();
} else 
{
show_debug_message("Warning: destroy conditions destroyed without object.")
}