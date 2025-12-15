function unlock_hand(){
	with(obj_hand)
	{
		movement_lock = false;
		movement_unlocking = true;
		state = hand_state_pointer;
	}
}

function unlock_hand_move()
{
	with(obj_hand)
	{
		movement_lock = false;
		movement_unlocking = true;
	}
}

function unlock_hand_function()
{
	with(obj_hand)
	{
		state = hand_state_pointer;
	}
}