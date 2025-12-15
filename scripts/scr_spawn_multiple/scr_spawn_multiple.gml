/// @function                 spawn_multiple(_obj, _points)
// @param {index} _obj
// @description Call to spawn in bulk on "Instances".
function spawn_multiple(_obj, _points){
	for(var _i = 0; _i < array_length(_points); _i++)
	{
		spawn(_obj, _points[_i][0], _points[_i][1]);	
	}
}