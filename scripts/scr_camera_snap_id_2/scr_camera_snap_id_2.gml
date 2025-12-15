function camera_snap_id_2(_id,_easing = 500) {
	var _snap = noone;
	with(obj_camera_snap) if(name == _id) _snap = self;
	if(instance_exists(_snap)) 
	{
		with(obj_camera) {
			follow = _snap;
			if(instance_exists(animation)) instance_destroy(animation);
			animation = animate_value_doublelerp(set_cam_size_uniform, self, cam_width/RESOLUTION_W, _snap.image_xscale, _easing);
		}
	}
}