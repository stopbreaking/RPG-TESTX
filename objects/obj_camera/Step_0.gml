// Follow

if (follow != noone) 
{
	x_to = follow.x + offset_x;
	y_to = follow.y + offset_y;
}

// Camera follow behaviours
if(follow_with_speed) 
{
	x += (x_to - x)/approach_friction;
	y += (y_to + follow.fall_speed - y)/approach_friction;
}
else {
	x += (x_to - x)/approach_friction;
	y += (y_to - y)/approach_friction;
}

if(clamping) {
// clamp camera in room
x = clamp(x, view_width_half, room_width-view_width_half);
y = clamp(y, view_height_half, room_height-view_height_half);
}

// screenshake
x += random_range(-shake_remaining, shake_remaining);
y += random_range(-shake_remaining, shake_remaining);

shake_remaining = max(0, shake_remaining - ((1/shake_length)*shake_magnitude));

camera_set_view_pos(view_camera[0],x-(view_width_half),y-(view_height_half));