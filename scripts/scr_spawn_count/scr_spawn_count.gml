/// @function                 spawn_multiple(_obj, _points)
// @param {index} _obj
// @description Call to spawn in bulk on "Instances".
function spawn_count(_obj, _x, _y, _count){
	for(var _i = 0; _i < _count; _i++)
	{
		spawn(_obj, _x, _y);	
	}
}