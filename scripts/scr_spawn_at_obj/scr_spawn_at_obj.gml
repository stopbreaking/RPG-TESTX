/// @function                 spawn(_obj, _x, _y)
// @description Create an instance on "Instances" relative to another
function spawn_at_obj(_obj, _target, _offset_x = 0, _offset_y = 0){
	return instance_create_layer(_target.x, _target.y, "Instances", _obj);
}