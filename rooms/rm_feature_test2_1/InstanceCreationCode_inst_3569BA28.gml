dialogue_array[0] = [
	[cutscene_enter],
	[switch_sprite, [me, sprite_talking]],
	[cutscene_toggle_portrait_enabled],
	[turn_player_toward_object, [me]],
	[0, cutscene_set_text, ["I CANT STOOOP!"]],
	[cutscene_exit],
]