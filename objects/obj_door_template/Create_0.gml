event_inherited();
image_speed = 0;

on_mouse_enter_script = set_image_index;
on_mouse_enter_args = [self, 1];

on_mouse_exit_script = set_image_index;
on_mouse_exit_args = [self, 0];

function get_room_next()
{
	return rm_next;
}

dialogue_array[0] = 
[
	[cutscene_enter],
	[set_image_index, [me, 1]],
	[set_room_transition_junk, [link_id]],
	[fade_to_room, [get_room_next, 60, c_black, snd_door_beep]],
]