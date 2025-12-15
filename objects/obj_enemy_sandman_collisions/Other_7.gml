if(global.game_paused) return;
if(state == sandman_state_waking)
{
	anim_end = true;
	sprite_index = sprite_running;
}