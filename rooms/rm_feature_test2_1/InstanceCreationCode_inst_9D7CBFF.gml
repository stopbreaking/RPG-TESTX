dialogue_array[0] = [
	[cutscene_enter],
	[switch_sprite, [self, sprite_talking]],
	[cutscene_toggle_portrait_enabled],
	[turn_player_toward_object, [self]],
	[0, cutscene_set_text, ["*Pop*"]],
	[switch_sprite, [self, sprite_idle]],
	[cutscene_exit],
]