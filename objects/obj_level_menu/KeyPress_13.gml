if(!confirm_window.open) return;
if(!global.level_started) return;

if (confirm_prompt.index == 0) {
	obj_game_manager.quit_level();
	
} else 
{
	unpause_game();
	confirm_window.open = false;
}
 