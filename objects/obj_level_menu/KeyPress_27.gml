if(!global.level_started) return;
if(!confirm_window.open)
{
	confirm_prompt.index = 0;
	pause_game();
	confirm_window.open = true;
} else 
{
	unpause_game();
	confirm_window.open = false;
}

confirm_text.progress = 0;