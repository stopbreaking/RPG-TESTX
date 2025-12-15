side_pad = 70;
top_pad = 100;

x1 = RESOLUTION_W/2;
y1 = RESOLUTION_H/2;
x2 = RESOLUTION_W/2;
y2 = RESOLUTION_H/2;

x1_target = side_pad;
x2_target = RESOLUTION_W - side_pad;

y1_target = top_pad;
y2_target = RESOLUTION_H - top_pad;

lerp_progress = 0;
text_progress = 0;

text_printed = false;

global.text_finished = false;

background = 0;

nine_slice_sprite = sprite_index;

/*
responses = ["This is a test of this text box thing.", "I'm a talking sign! A smiling, talking sign!", "Isn't that fucking awesome??!?!"];
response_selected = 0; */