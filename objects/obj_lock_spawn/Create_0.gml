falling = true;

flash_shader = sh_white_flash;
u_flash = -1;

flash = 1;
flash_dissipate = 0.01;



fall_speed = -10;
fall_acceleration = 0.5;

// Floating sine wave

y_origin = 0;
float_speed = 0.05;
magnitude = 12;
phase = pi/2;
t = 0;


// wait

wait = true;
wait_time = 0.5;

depth = obj_guy.depth + 1;

vspd = 0;
hspd = 0;

prev_frame = 
{
	x: x,
	y: y,
	bbox_left: bbox_left,
	bbox_right: bbox_right,
	bbox_top: bbox_top,
	bbox_bottom: bbox_bottom,
}

z = 0;