function send_player_character(_guy, _targetx = 0, _targety = 0, dont_stop = false){
	if(_guy == noone) return;
	if(_guy.state == player_state_paused) return;
	if(_guy.state == player_state_dead) return;
	with(_guy)
	{
		targetx = _targetx;
		targety = _targety;
		if(dont_stop) expected_move_distance = 9999;
		else expected_move_distance = point_distance(x, y, targetx, targety);
	}
}

function send_player_character_relative(_guy, _relativex, _relativey) 
{
	var _x = 0;
	var _y = 0;
	
	with(_guy)
	{
		_x = x + _relativex;
		_y = y + _relativey;
	}
	
	send_player_character(_guy, _x, _y);
}