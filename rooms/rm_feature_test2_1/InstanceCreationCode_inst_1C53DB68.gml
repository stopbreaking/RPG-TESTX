dialogue_array[0] = [
		[cutscene_enter],
		[switch_sprite, [me, sprite_talking]],
		[cutscene_toggle_portrait_enabled],
		[turn_player_toward_object, [me]],
		[0, cutscene_set_text, ["What's the problem? Never seen a janitor before?"]],
		[switch_sprite, [me, sprite_idle]],
		[increment_dialogue, [me]],
		[npc_reset_sprite, [me]],
		[cutscene_exit],
	]
	
dialogue_array[1] = [
		[cutscene_enter],
		[switch_sprite, [me, sprite_talking]],
		[cutscene_toggle_portrait_enabled],
		[turn_player_toward_object, [me]],
		[0, cutscene_set_text, ["Hey.. Buddy... Why don't you piss off."]],
		[0, cutscene_set_text, ["I'm having a bad day."]],
		[switch_sprite, [me, sprite_idle]],
		[npc_reset_sprite, [me]],
		[cutscene_exit],
	]