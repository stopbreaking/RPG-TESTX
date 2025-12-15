if(!duplicate_horizontally) horizontal_duplicate_distance = 999999;
if(!duplicate_vertically) vertical_duplicate_distance = 999999;

	var k = -1;
	for(var i = x_offset; i < room_width; i += horizontal_duplicate_distance)
	{
		for(var j = y_offset; j < room_height + 2 * vertical_duplicate_distance; j += vertical_duplicate_distance)
		{
			k ++;
			spawn(parallax_object, i + (horizontal_duplicate_distance*(k%2)/2), j).pad = (horizontal_duplicate_distance/2);
		}
	}