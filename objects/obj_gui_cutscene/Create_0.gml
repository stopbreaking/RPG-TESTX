// Goal: Draw two black boxes across the screen
box_height = RESOLUTION_H / 8

//---------Letterboxing---------//

letterboxing = false;

// Top box

x1_1 = 0;
y1_1 = 0;
x1_2 = 0;
y1_2 = box_height;

x1_1_target = 0;
x1_2_target = RESOLUTION_W;
y1_1_target = 0;
y1_2_target = box_height;

// Bottom_box
x2_1 = RESOLUTION_W;
y2_1 = RESOLUTION_H - box_height;
x2_2 = RESOLUTION_W;
y2_2 = RESOLUTION_H;

x2_1_target = 0;
x2_2_target = RESOLUTION_W;

y2_1_target = RESOLUTION_H - box_height;
y2_2_target = RESOLUTION_H;


//---------Camera2---------//
// Phonecall camera2 mask sprite

second_camera_on = false;

x3 = RESOLUTION_W;
x3_target = RESOLUTION_W/2;


//---------Textbox---------//

textbox = 
{
	x: RESOLUTION_W * 0.15,
	y: RESOLUTION_H - RESOLUTION_H * 0.2,
	x1: RESOLUTION_W - RESOLUTION_W * 0.15,
	y1: RESOLUTION_H - 14,
}

// open from the side 
// target_positions
tx1 = RESOLUTION_W * 0.15;
tx2 = RESOLUTION_W - RESOLUTION_W * 0.15;
ty1 = RESOLUTION_H - RESOLUTION_H * 0.2;
ty2 = RESOLUTION_H - 14;

text_action = noone;
text_progress = 0;
text_printed = false;
text = "";
text_length = 0;
margin = 20;

text_on = false;
player_control_on = true;

portrait_on = false;
portrait_sprite_idle = spr_portrait_template;
portrait_sprite_talking = spr_portrait_template;
portrait_width = 120;
portrait_pad = 5;

// lerping

lerp_progress = 0;
lerp_open = true;

call_screen_lerp = 0;

// dismissal
closing = false;

background = 0;
surf = -1;

portrait_on = true;

set_textbox_alignment(CUTSCENE_TEXTBOX_ALIGNMENT.BOTTOM);

destroy = false;
