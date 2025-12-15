sprite_idle = sprite_index;

on_mouse_enter_script = switch_sprite;
on_mouse_enter_args = [self, sprite_highlight];

on_mouse_exit_script = switch_sprite;
on_mouse_exit_args = [self, sprite_idle];

on_click_script = talk_and_change_dialog;
on_click_args = [self];




function talk_and_change_dialog(_inst)
{
	with(_inst) {
		npc_start_talking(self, sprite_talking, mini_dialog(dialog_line[d_index]));
		if(d_index < array_length(dialog_line) - 1) d_index ++;
	}
}