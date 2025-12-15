function on_shake()
{
	var _exit = false;
	with(obj_guy) 
	{
		if(shake_mag > 12)
		{
			cutscene_set_textbox_player_control(true);
			instance_destroy(obj_cutscene_action);
			_exit = true;
		}
	}
	if _exit instance_destroy();
}

event_register_script("shake_loose", self, on_shake);