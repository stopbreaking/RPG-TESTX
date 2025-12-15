if(confirm_reset) return;
up_key_down = true;
if(selected == array_length(global.level_data) - 1) return;
if(down_key_down) return;
audio_sound_pitch(menu_scroll_sound, 2);
audio_play_sound(menu_scroll_sound, 1, false);
if(scroll_timer <= 0)
{
	increment_index();
	scroll_timer = scroll_timer_reset;
} else 
{
	scroll_timer --;
}