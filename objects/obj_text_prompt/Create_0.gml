t = 0;
dt = 0.01;
//start = true;

font = fnt_narrator;
//text = "Calibrating. . .";
text_progress = 0;
text_width = RESOLUTION_W * 0.9;

x = RESOLUTION_H/2;
y = RESOLUTION_W/2;

anchor_x = x;
anchor_y = y;

c1 = c_white;
c2 = c_white;
c3 = c_white;
c4 = c_white;

proceed_prompt_alpha = 0;

hop_progress = -1;
hop_delay_seconds = 0;
hop_delay_alternate = 0.15;
hop_increment = 0.075;
hop_height = 7;

action_obj = noone;

printed = false;
fulfilled = false;

blink = false;
blink_dur = 0.5 * FRAME_RATE;
blink_time = 0;
blink_freq = 3;
draw = true;

reset = false;