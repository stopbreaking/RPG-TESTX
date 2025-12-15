function sandman_state_waking(){
	if(!anim_end) return;
	pursuit_delay --;
	if(pursuit_delay > 0) return;
	anim_end = false;
	sprite_index = sprite_running;
	state = sandman_state_running;
}