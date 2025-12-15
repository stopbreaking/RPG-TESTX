text_pad = 6;

textbox = spawn(obj_gui_frame_pusharound, x + distance_x, y + distance_y);
textbox.width = width;
textbox.height = height;
textbox.init();

line = spawn(obj_draw_line, x + 5, y - 5);
line.x_pad = 75;
line.y_pad = -text_pad*2;
line.ease = 10;
line.textbox = textbox;
line.init();
