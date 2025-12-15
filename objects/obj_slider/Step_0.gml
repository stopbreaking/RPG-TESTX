if mouse_check_button_pressed(mb_left) 
{
	if point_in_rectangle(mouse_x, mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom) selected = true;
} else 
{
	selected = false;
}

if selected
{
	value = scale*clamp((mouse_x - x)/sprite_width, 0, 1);
	script_execute_array(set_script, [user, value]);
}
