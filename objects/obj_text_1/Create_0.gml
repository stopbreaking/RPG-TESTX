x1 = RESOLUTION_W/2;
y1 = RESOLUTION_H - 70;
x2 = RESOLUTION_W/2;
y2 = RESOLUTION_H;

x1_target = 0;
x2_target = RESOLUTION_W;

lerp_progress = 0;
text_progress = 0;
text_printed = false;

// Blinking

c_continue_marker = c_yellow;
continue_marker = "vv";
blink_ticker = 15;
blink_ticker_reset = blink_ticker;
blink_visiblity = false;

global.mini_text_printed = false;

/*
responses = ["This is a test of this text box thing.", "I'm a talking sign! A smiling, talking sign!", "Isn't that fucking awesome??!?!"];
response_selected = 0; */