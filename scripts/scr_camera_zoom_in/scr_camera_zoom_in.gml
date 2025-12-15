function camera_zoom(_scale,_easing = 500) {
		with(obj_camera) {
			if(instance_exists(animation)) instance_destroy(animation);
			animation = animate_value_doublelerp(set_cam_size_uniform, self, cam_width/RESOLUTION_W, 1/_scale, _easing);
		}
}