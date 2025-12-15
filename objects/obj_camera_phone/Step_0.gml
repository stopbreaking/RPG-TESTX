if(active){
if (follow != noone) 
{
	x_to = follow.x - phone_call_offset_x;
	y_to = follow.y;
}
	x += (x_to - x)/div_speed;
	y += (y_to - y)/div_speed;

camera_set_view_pos(view_camera[1],x-(view_width_half),y-(view_height_half) - y_offset);
}


