on_mouse_enter_script = switch_sprite;
on_mouse_enter_args = [self, spr_signpost_highlight];

on_mouse_exit_script = switch_sprite;
on_mouse_exit_args = [self, spr_signpost_idle];

sprite_idle = spr_signpost_idle;
sprite_highlight = spr_signpost_highlight;

on_click_script = npc_start_talking;
on_click_args = [self, spr_signpost_talkin, 
[
["Careful."],
["Those sand dudes will always try to take the shortest path to get to you."],
["Regardless of whether theres a gate in the way."],
]]