timer --;
if(timer <= 0)
{
	var _spd = arrow_speed;
	var _dir = arrow_direction;
	var _arrow = spawn(obj_arrow, x, y);
	with(_arrow) 
	{
		spd = _spd;
		speed = _spd;
		direction = _dir;
	}
	_arrow.init();
	timer = interval * FRAME_RATE;
}