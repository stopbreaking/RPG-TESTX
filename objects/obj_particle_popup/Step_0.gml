y_offset = lerp(y_offset, target_y_offset, time/leadup);
time = Approach(time, leadup, 1);
depth = obj_guy.depth;