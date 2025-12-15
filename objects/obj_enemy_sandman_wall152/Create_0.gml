anim_end = false;

path = noone;

attack_force = 20;

pursuit_delay = pursuit_delay_max;

cbox_color = c_blue;

sprite_sleeping = spr_enemy_sandman_sleeping;
sprite_wakeup = spr_enemy_sandman_wakeup;
sprite_running = spr_enemy_sandman_running;

sprite_index = sprite_sleeping;
state = sandman_state_sleeping;

prev_frame = 
	{
	x: x,
	y: y,
	bbox_left: bbox_left,
	bbox_right: bbox_right,
	bbox_top: bbox_top,
	bbox_bottom: bbox_bottom,
	}
	
hspd = 0;
vspd = 0;
