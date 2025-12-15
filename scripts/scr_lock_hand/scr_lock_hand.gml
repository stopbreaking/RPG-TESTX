function lock_hand(){
	with(obj_hand)
	{
		movement_lock = true;
	}
}

function lock_hand_move()
{
	with(obj_hand)
	{
		movement_lock = true;
	}
}

function lock_hand_function()
{
	with(obj_hand)
	{
		sprite_index = spr_hand_pointer;
		clickable = noone;
		hand_trigger_enter_exit();
		state = hand_state_paused;
	}
}