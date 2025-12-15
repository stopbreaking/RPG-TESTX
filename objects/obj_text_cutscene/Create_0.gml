/* x1 = RESOLUTION_W/2;
y1 = RESOLUTION_H - 70;
x2 = RESOLUTION_W/2;
y2 = RESOLUTION_H;


global.text_finished = false;

sprite_nine_slice = spr_cool_nine_slice_text_box3;

text_printed = false;
text_progress = 0;  */

/*
responses = ["This is a test of this text box thing.", "I'm a talking sign! A smiling, talking sign!", "Isn't that fucking awesome??!?!"];
response_selected = 0; */

if(instance_exists(obj_gui_cutscene)) obj_gui_cutscene.textbox = self;