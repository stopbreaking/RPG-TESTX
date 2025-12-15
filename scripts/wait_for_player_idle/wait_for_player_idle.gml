function wait_for_player_idle(){
	if(obj_guy.state == player_state_idle){
		instance_destroy();
		return;
	}
	var _obj = self;
	with(spawn(obj_wait_for_player_idle, x, y)) {
		action = _obj;
	}
}