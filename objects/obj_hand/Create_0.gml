grabbing = false;

stick = false;
prev_frame = 
{
	x_rel: x,
	y_rel: y,
}

anim_end = false;

clickable = noone;
prev_clickable = noone;

player_character = obj_guy;

pointer_x_offset = 30;
pointer_y_offset = 30;

update_timer_max = 5;
t = 0;

movement_lock = false;


state = hand_state_pointer;

movement_unlocking = false;

easing = 10;

afk_timer = 60;
afk_timer_reset = afk_timer;
// Sprites

sprite_pointer = spr_hand_pointer;
sprite_highlight = spr_hand_highlight;
sprite_grabbing = spr_hand_grab;
sprite_holding = spr_hand_hold;

if(!instance_exists(obj_cursor_message)) spawn(obj_cursor_message);