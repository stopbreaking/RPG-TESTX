wait --;
if(place_meeting(x,y,obj_guy) && instance_place(x,y,obj_guy).state == player_state_falling && wait <= 0)
{
	instance_change(obj_star_smush_d, true);
}