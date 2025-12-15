function sandman_state_sleeping(){
	if(distance_to_object(obj_guy) >= wakeup_radius) return;
	sprite_index = sprite_wakeup;
	state = sandman_state_waking;
}