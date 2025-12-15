if(place_meeting(x,y,obj_guy) && instance_place(x,y,obj_guy).state == player_state_falling)
{
	instance_change(obj_star_smush_b, true);
}