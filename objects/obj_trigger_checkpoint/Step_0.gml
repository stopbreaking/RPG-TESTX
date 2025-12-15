if(!triggered && place_meeting(x, y, obj_guy)) 
{
	if(obj_guy.state == player_state_falling) return;
	save_room_state();
	save_room_puzzle_state();
	save_game();
	triggered = true; 
}