if(place_meeting(x, y, obj_hand))
	{
		if(mouse_check_button_pressed(mb_left))
		{
			dx = x - mouse_x;
			dy = y - mouse_y;
			selected = true;
		}
	}
if(selected) {
	x = mouse_x + dx;
	y = mouse_y + dy;
	
	if(mouse_check_button_released(mb_left))
	{
		selected = false;
	}
}