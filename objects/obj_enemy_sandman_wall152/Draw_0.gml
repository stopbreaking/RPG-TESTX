draw_self();

if(DEBUG_COLLISIONS) {
draw_set_color(cbox_color);
draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);
draw_set_color(c_white);
}
