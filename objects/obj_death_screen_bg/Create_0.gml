if(instance_exists(obj_camera)){
x = obj_camera.x;
y = obj_camera.y;
}

image_xscale = max(RESOLUTION_W, (obj_camera.cam_width / RESOLUTION_W));
image_yscale = max(RESOLUTION_H, (obj_camera.cam_height / RESOLUTION_H));

depth = obj_guy.depth + 10;