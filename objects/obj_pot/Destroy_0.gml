spawn_count(obj_particle_burst, x, y - 32, 10);

if(pushing) {
	exit_player_state_pushing(obj_guy);
	if(obj_guy.state == player_state_pushing_fast)
		{
			obj_guy.run_speed += slow_factor*obj_guy.sprint_factor;
		} else {
			obj_guy.run_speed += slow_factor;
		}
	//obj_guy.run_speed += slow_factor;
	//obj_guy.sprite_index = spr_guy_with_hat_running;
}