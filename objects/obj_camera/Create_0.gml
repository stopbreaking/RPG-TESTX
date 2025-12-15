cam_width = RESOLUTION_W;
cam_height = RESOLUTION_H;

//window_set_size(cam_width, cam_height);
//surface_resize(application_surface, cam_width, cam_height);

follow = obj_guy;

x_to = x;
y_to = y;

camera = camera_create_view(0, 0, cam_width, cam_height, 0, -1, -1, -1, 0, 0);
global.main_camera = camera;
global.main_camera_obj = self;

shake_remaining = 0;
shake_magnitude = 0;
shake_length = 0;

view_width_half = cam_width/2;
view_height_half = cam_height/2;

clamping = true;

offset_x = 0;
offset_y = 0;

approach_friction = 25;
af_slow = 50;
af_normal = 25;

follow_with_speed = false;

animation = noone; // object that adjusts the camera's size.. Is this stupid??

//slider(self, 1440, camera_main_set_view_uniform_size);
//animation = animate_value_doublelerp(set_cam_size_uniform, self, 720, 1440, 1000);