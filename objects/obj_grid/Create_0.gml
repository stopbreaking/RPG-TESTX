global.mapgrid = mp_grid_create(0, 0, floor(room_width/32), floor(room_height/32), 32, 32); 

var _w = room_width/32;
var _h = room_height/32;
var _index = 0;

for (var _i = 0; _i < _w; _i++)
{
	for (var _j = 0; _j < _h; _j++)
	{
		if(tilemap_get(layer_tilemap_get_id(layer_get_id("Collision_Tiles")), floor(_i/2), floor(_j/2)) > 0)
			mp_grid_add_cell(global.mapgrid, _i, _j);
	}
}
