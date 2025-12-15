if(instance_exists(obj_camera)){
x = obj_camera.x;
y = obj_camera.y + 300;
}
depth = obj_guy.depth + 5;

if( pause >= 0 ) 
{
	pause -= 1/FRAME_RATE;
} else 
{
	fade = max(0, fade - 1/FRAME_RATE);
	image_alpha = 1 - (fade/fade_in_time);
}
