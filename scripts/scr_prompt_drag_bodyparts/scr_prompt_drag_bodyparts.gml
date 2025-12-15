function prompt_drag_bodyparts()
{
	if(instance_exists(obj_click_and_drag_fadein)) with(obj_click_and_drag_fadein) stuck = false;
	if(fulfilled) 
	{
		text_progress = 0;
		text = ". . .";
		printed = false;
		reset = true;
	}
}