// Variable definitions that don't need to be seen from the editor!!
dialogue_array[0] = [
		[cutscene_enter],
		[switch_sprite, [me, sprite_talking]],
		[set_player_sprite_look_north],
		[cutscene_toggle_portrait_enabled],
		[turn_player_toward_object, [me]],
		[0, cutscene_set_text, ["Funny Character Viewing Room&&\nNO ACCESS"]],
		[switch_sprite, [me, sprite_idle]],
		[npc_reset_sprite, [me]],
		[set_player_state_idle],
		[cutscene_exit],
]
dialogue_index = 0;
