on_mouse_enter_script = switch_sprite;
on_mouse_enter_args = [self, spr_signpost_highlight];

on_mouse_exit_script = switch_sprite;
on_mouse_exit_args = [self, spr_signpost_idle];

sprite_idle = spr_signpost_idle;
sprite_highlight = spr_signpost_highlight;

on_click_script = npc_start_talking;
on_click_args = [self, spr_signpost_talkin, 
[
["Congratuations!"],
["You broke the game."],
["Go anywhere you like, touch anything!"],
["The world is your oyster, my guy."],
]]