if(player_highlight && !instance_exists(obj_gui_cutscene) && !clickable_disabled)
{
	show_debug_message("interact triggered!")
	script_execute_array(on_click_script, on_click_args);
}