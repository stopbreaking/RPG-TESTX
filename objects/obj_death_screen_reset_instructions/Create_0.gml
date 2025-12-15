if(instance_exists(obj_camera)){
x = obj_camera.x;
y = obj_camera.y + (300/720)*RESOLUTION_H;
}
depth = obj_guy.depth + 10;

image_alpha = 0;
fade_in_time = 1;
fade = fade_in_time;
pause = 0.5;