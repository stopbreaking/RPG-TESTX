cam_width = RESOLUTION_W;
cam_height = RESOLUTION_H;

camera = camera_create_view(0, 0, cam_width, cam_height, 0, -1, -1, -1, 0, 0);

view_width_half = cam_width / 2;
view_height_half = cam_height/2;

global.camera2 = self;

surf = noone;
/*
view_set_wport(1, RESOLUTION_W);
view_set_wport(1, RESOLUTION_H);
*/
active = false;

view_camera[1] = camera;

x_to = x;
y_to = y;

div_speed = 25;
phone_call_offset_x = RESOLUTION_W * .3;

/*
if(instance_exists(obj_other_guy_2)) follow = obj_other_guy_2;
else follow = noone;
*/
if(instance_exists(obj_camera_snap)) follow = obj_camera_snap;
else follow = noone;

phone_call_offset_x = RESOLUTION_W * .3;
y_offset = RESOLUTION_H/10;