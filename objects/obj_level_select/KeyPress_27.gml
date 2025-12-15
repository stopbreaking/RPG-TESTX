if(confirm_reset)
{
	confirm_reset = false;
	confirm_reset_target = false; // turn off?
} else {
	if(select_level) select_level = false;
	update_text_position_targets();
}