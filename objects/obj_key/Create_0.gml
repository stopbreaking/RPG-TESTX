event_inherited();
y_origin = y;
t = 0;
t_speed = 0.1;
magnitude = 6;

function send_to_hand()
{
	send_player_character(obj_guy, mouse_x, mouse_y);
}

on_click_script = send_to_hand;
on_click_args = [];