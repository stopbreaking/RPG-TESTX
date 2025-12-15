/// @description Insert description here
if(primed)
{
	if(point_distance(x, y, obj_guy.x, obj_guy.y) < interact_radius){
		deactivate();
		with(obj_guy) 
		{
			expected_move_distance = 0;
			set_player_state_idle();
		}
		player_highlight = true;
		on_interact();
	}
} else if (point_distance(x, y, obj_guy.x, obj_guy.y) < interact_radius) 
{
	player_highlight = true;
	with(obj_speech_bubble) visible = true;
} else 
{
	if(player_highlight) with obj_speech_bubble visible = false;
	player_highlight = false;
}