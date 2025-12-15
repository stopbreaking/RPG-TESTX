function camera_snap_to_player(){
	if(instance_exists(obj_guy)) with(obj_camera) follow = obj_guy;
}