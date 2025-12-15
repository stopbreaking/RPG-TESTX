if(falling)
{
	fall_speed += fall_acceleration
	vspd = fall_speed;
	y += vspd;
	check_collisions_objects_prev_frame_vertical_exclusive();
	check_collisions_tiles_fixed_vertical();
	if(y == prev_frame.y && fall_speed > 0)
	{
		falling = false;
		y_origin = y - magnitude;
	}
}
else if (wait) 
{
	t ++;
	if(t > wait_time*FRAME_RATE)
	{
		t = 0;
		wait = false;
	}
}
else
{
	t = t + float_speed;
	if((t) > 2*pi) t -= 2*pi;
	z = magnitude * (sin(t + phase) - 0.5);
}
flash = max(flash - flash_dissipate, 0);