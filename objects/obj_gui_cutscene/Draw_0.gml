/// @description Empty... Like the wind.
if (!lerp_open && lerp_progress >= 0.90) 
{
	//instance_destroy(); Not anymore..
	return;
}

if (second_camera_on) {
view_enabled[1] = true;
view_visible[1] = true;
if(!surface_exists(surf)) {
	surf = surface_create(RESOLUTION_W, RESOLUTION_H);
	surface_set_target(surf);
	draw_clear_alpha(c_white,0);
	surface_reset_target();
}

view_surface_id[1] = surf;
surface_set_target(surf);
camera_apply(view_camera[1]);
surface_reset_target();
}

//surface free needs to happen before end of room to avoid memory leaks