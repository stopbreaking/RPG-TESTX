if(!place_meeting(x, y, obj_guy)) return;
if(triggered) return;
	
show_debug_message("triggered!");
if(rm != noone)
	pause_and_fade_to_room(rm, 60, c_black, snd_affirmative_chime);

triggered = true;
