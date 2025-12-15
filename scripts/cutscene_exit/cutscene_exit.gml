// @desc Default end action when dealing with scripted events.
function cutscene_exit()
{
	destroy_cutscene_gui();
	unlock_hand_function();
	unlock_player();	
}