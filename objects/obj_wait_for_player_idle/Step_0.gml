var _flag = false;
with(obj_guy)
{
	if(state == player_state_idle) _flag = true;
}
if(_flag) instance_destroy();