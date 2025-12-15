function destroy_by_id(_obj, _id) {
	with(_obj) if(name == _id) instance_destroy();
}