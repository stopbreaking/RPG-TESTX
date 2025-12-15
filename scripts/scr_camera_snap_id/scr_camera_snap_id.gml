function camera_snap_id(_id) {
	var _snap = noone;
	with(obj_camera_snap) if(name == _id) _snap = self;
	if(instance_exists(_snap)) 
	{
		with(obj_camera) follow = _snap;
	}
}