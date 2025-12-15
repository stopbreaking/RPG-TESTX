/// @function                 spawn(_obj, _x, _y)
// @description Just a quick way of calling instance_create_layer on "Instances" 
function spawn(_obj, _x = 0, _y = 0){
	return instance_create_layer(_x, _y, "Instances", _obj);
}